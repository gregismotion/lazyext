import 'dart:core';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jni/jni.dart';
import 'package:lazyext/pdf/extractor.dart';
import 'package:mupdf_android/mupdf_android.dart' as mupdf;
import 'package:path_provider/path_provider.dart';
import 'package:pdfx/pdfx.dart';
import 'package:uuid/uuid.dart';

import '../pdf/mapper.dart';

class OriginalView extends StatefulWidget {
  final Iterable<mupdf.PDFDocument> documents;
  final void Function(List<mupdf.PDFDocument>) onDocumentsChange;
  const OriginalView(
      {super.key, required this.documents, required this.onDocumentsChange});

  @override
  State<OriginalView> createState() => _OriginalViewState();
}

class _OriginalViewState extends State<OriginalView>
    with AutomaticKeepAliveClientMixin {
  late final String root;
  late final Map<mupdf.PDFDocument, (Widget, Widget)> paths =
      Map.fromEntries(widget.documents.map((e) {
    return MapEntry(e, (
      Tab(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: widget.documents.length > 1,
            child: IconButton(
              icon: const Icon(Icons.close_outlined),
              onPressed: () {
                setState(() {
                  paths.remove(e);
                  widget.onDocumentsChange(paths.keys.toList());
                });
              },
            ),
          ),
          Text(e.title),
        ],
      )),
      FutureBuilder(
        future: e.temporaryPath,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          String? data = snapshot.data;
          if (data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return PdfView(
                controller:
                    PdfController(document: PdfDocument.openFile(data)));
          }
        },
      )
    ));
  }));

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
        length: paths.length,
        child: Column(
          children: [
            TabBar.secondary(
                isScrollable: true,
                tabs: paths.values.map((e) => e.$1).toList()),
            Expanded(
              child:
                  TabBarView(children: paths.values.map((e) => e.$2).toList()),
            ),
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}

class ExerciseListView extends StatefulWidget {
  final List<Exercise> exercises;
  const ExerciseListView(
      {super.key, required this.exercises, this.exercisesChanged});
  final void Function(List<Exercise>)? exercisesChanged;

  @override
  State<ExerciseListView> createState() => _ExerciseListViewState();
}

class _ExerciseListViewState extends State<ExerciseListView>
    with AutomaticKeepAliveClientMixin {
  List<Future<ImageProvider?>> _exercisesToImageProviders(
      List<Exercise> exercises) {
    List<Future<ImageProvider?>> providers = [];
    for (Exercise exercise in exercises) {
      providers.add(_exerciseToImageProvider(exercise));
    }
    return providers;
  }

  Future<ImageProvider?> _exerciseToImageProvider(Exercise exercise) async {
    mupdf.Pixmap? pixmap = await exercise.toPixmap();
    if (pixmap == null) {
      return null;
    } else {
      String path =
          "${(await getTemporaryDirectory()).path}/${const Uuid().v4()}.png";
      pixmap.saveAsPNG(path.toJString());
      return FileImage(File(path));
    }
  }

  late final List<Exercise> exercises = widget.exercises;
  late final List<Future<ImageProvider?>> providers =
      _exercisesToImageProviders(widget.exercises);
  Map<int, bool> disabled = {};

  List<Exercise> get enabledExercises {
    List<Exercise> result = [];
    for (int i = 0; i < exercises.length; i++) {
      if (disabled[i] ?? false) {
        continue;
      } else {
        result.add(exercises[i]);
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ReorderableListView.builder(
      itemBuilder: (context, index) {
        return ExerciseListItem(
          key: Key(index.toString()),
          provider: providers[index],
          onChanged: (bool change) {
            setState(() {
              disabled[index] = !change;
            });
          },
          value: !(disabled[index] ?? false),
        );
      },
      itemCount: providers.length,
      onReorder: (int aI, int bI) {
        setState(() {
          Exercise b = exercises[bI];
          bool? bDisabled = disabled[bI];
          Future<ImageProvider?> bProvider = providers[bI];
          Exercise a = exercises[aI];
          bool? aDisabled = disabled[aI];
          Future<ImageProvider?> aProvider = providers[aI];
          exercises[bI] = a;
          disabled[bI] = aDisabled ?? false;
          providers[bI] = aProvider;
          exercises[aI] = b;
          disabled[aI] = bDisabled ?? false;
          providers[aI] = bProvider;
          final exercisesChanged = widget.exercisesChanged;
          if (exercisesChanged != null) {
            exercisesChanged(enabledExercises);
          }
        });
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ExerciseListItem extends StatefulWidget {
  const ExerciseListItem(
      {super.key,
      required this.provider,
      required this.onChanged,
      required this.value});

  final Future<ImageProvider?> provider;
  final void Function(bool change) onChanged;
  final bool value;

  @override
  State<ExerciseListItem> createState() => _ExerciseListItemState();
}

class _ExerciseListItemState extends State<ExerciseListItem> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ImageProvider?>(
        future: widget.provider,
        builder: (context, snapshot) {
          Widget tile(Widget child) => Row(
                children: [
                  Expanded(
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      child,
                      Checkbox(
                        value: widget.value,
                        onChanged: (bool? change) {
                          widget.onChanged(change ?? false);
                        },
                      ),
                    ]),
                  ),
                  const Icon(Icons.drag_handle_rounded, size: 45),
                ],
              );
          ImageProvider? provider = snapshot.data;
          if (snapshot.connectionState != ConnectionState.done) {
            return tile(const Center(child: CircularProgressIndicator()));
          } else if (provider == null) {
            return tile(const Center(child: Icon(Icons.error_rounded)));
          } else {
            return tile(ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.color),
              child: Image(image: provider),
            ));
          }
        });
  }
}
