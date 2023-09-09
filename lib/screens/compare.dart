import 'dart:io';

import 'package:async/async.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:jni/jni.dart';
import 'package:lazyext/pdf/extractor.dart';
import 'package:lazyext/pdf/merger.dart';
import 'package:lazyext/screens/screen.dart';
import 'package:lazyext/widgets/compare.dart';
import 'package:mupdf_android/mupdf_android.dart' hide Text;
import 'package:uuid/uuid.dart';

class CompareScreen extends StatelessWidget {
  final Iterable<String> path;
  const CompareScreen({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    const List<Tab> tabs = [
      Tab(icon: Text("Original")),
      Tab(icon: Text("Merged"))
    ];
    return DefaultTabController(
        length: tabs.length, child: CompareScreenView(tabs: tabs, paths: path));
  }
}

class CompareScreenView extends StatefulWidget {
  const CompareScreenView({
    super.key,
    required this.tabs,
    required this.paths,
  });

  final List<Tab> tabs;
  final Iterable<String> paths;

  @override
  State<CompareScreenView> createState() => _CompareScreenViewState();
}

class _CompareScreenViewState extends State<CompareScreenView>
    with AutomaticKeepAliveClientMixin {
  int index = 0;

  late List<Exercise> exercises = [];

  Future<void> _mergeAndSave(Merger merger) async {
    setState(() => loading = true);
    Future<PDFDocument> document = merger.exercisesToPDFDocument(exercises);
    String? dir = await FilePicker.platform.getDirectoryPath();
    if (dir != null) {
      String path = "$dir/${const Uuid().v4()}.pdf";
      (await document).save(path.toJString(), path.toJString());
    }
    setState(() => loading = false);
  }

  late Stream<Exercise> stream = StreamGroup.merge(widget.paths
      .map((e) => ExerciseExtractor().getExercisesFromFile(File(e)))
      .toList());

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    DefaultTabController.of(context).addListener(
        () => setState(() => index = DefaultTabController.of(context).index));
    return ScreenWidget(
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: index == 1
            ? ExpandableFab(
                openButtonBuilder: RotateFloatingActionButtonBuilder(
                    child: const Icon(Icons.merge_rounded)),
                closeButtonBuilder: RotateFloatingActionButtonBuilder(
                    child: const Icon(Icons.close_rounded)),
                children: [
                  FloatingActionButton(
                      heroTag: "practice",
                      onPressed: () {
                        _mergeAndSave(PracticeMerger());
                      },
                      child: const Icon(Icons.edit_rounded)),
                  FloatingActionButton(
                      heroTag: "merger",
                      onPressed: () {
                        _mergeAndSave(SummaryMerger());
                      },
                      child: const Icon(Icons.summarize_rounded))
                ],
              )
            : null,
        title: "Compare",
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Column(
            children: [
              TabBar(
                tabs: widget.tabs,
              ),
              Visibility(
                  visible: loading, child: const LinearProgressIndicator()),
            ],
          ),
        ),
        child: TabBarView(children: [
          OriginalView(
            paths: widget.paths,
          ),
          ExerciseListView(
            stream: stream,
            exercisesChanged: (e) => exercises = e,
          )
        ]));
  }

  @override
  bool get wantKeepAlive => true;
}
