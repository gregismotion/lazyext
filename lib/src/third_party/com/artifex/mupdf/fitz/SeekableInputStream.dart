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

/// from: com.artifex.mupdf.fitz.SeekableInputStream
class SeekableInputStream extends jni.JObject {
  @override
  late final jni.JObjType<SeekableInputStream> $type = type;

  SeekableInputStream.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _class =
      jni.Jni.findJClass(r"com/artifex/mupdf/fitz/SeekableInputStream");

  /// The type which includes information such as the signature of this class.
  static const type = $SeekableInputStreamType();
  static final _id_read =
      jni.Jni.accessors.getMethodIDOf(_class.reference, r"read", r"([B)I");

  /// from: public abstract int read(byte[] bs)
  int read(
    jni.JArray<jni.jbyte> bs,
  ) {
    return jni.Jni.accessors.callMethodWithArgs(
        reference, _id_read, jni.JniCallType.intType, [bs.reference]).integer;
  }
}

class $SeekableInputStreamType extends jni.JObjType<SeekableInputStream> {
  const $SeekableInputStreamType();

  @override
  String get signature => r"Lcom/artifex/mupdf/fitz/SeekableInputStream;";

  @override
  SeekableInputStream fromRef(jni.JObjectPtr ref) =>
      SeekableInputStream.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($SeekableInputStreamType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($SeekableInputStreamType) &&
        other is $SeekableInputStreamType;
  }
}
