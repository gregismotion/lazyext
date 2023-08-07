// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: file_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_shown_name

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

import "Archive.dart" as archive_;

import "Buffer.dart" as buffer_;

/// from: com.artifex.mupdf.fitz.TreeArchive
class TreeArchive extends archive_.Archive {
  @override
  late final jni.JObjType<TreeArchive> $type = type;

  TreeArchive.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _class =
      jni.Jni.findJClass(r"com/artifex/mupdf/fitz/TreeArchive");

  /// The type which includes information such as the signature of this class.
  static const type = $TreeArchiveType();
  static final _id_add = jni.Jni.accessors.getMethodIDOf(_class.reference,
      r"add", r"(Ljava/lang/String;Lcom/artifex/mupdf/fitz/Buffer;)V");

  /// from: public native void add(java.lang.String string, com.artifex.mupdf.fitz.Buffer buffer)
  void add(
    jni.JString string,
    buffer_.Buffer buffer,
  ) {
    return jni.Jni.accessors.callMethodWithArgs(reference, _id_add,
        jni.JniCallType.voidType, [string.reference, buffer.reference]).check();
  }
}

class $TreeArchiveType extends jni.JObjType<TreeArchive> {
  const $TreeArchiveType();

  @override
  String get signature => r"Lcom/artifex/mupdf/fitz/TreeArchive;";

  @override
  TreeArchive fromRef(jni.JObjectPtr ref) => TreeArchive.fromRef(ref);

  @override
  jni.JObjType get superType => const archive_.$ArchiveType();

  @override
  final superCount = 2;

  @override
  int get hashCode => ($TreeArchiveType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($TreeArchiveType) && other is $TreeArchiveType;
  }
}
