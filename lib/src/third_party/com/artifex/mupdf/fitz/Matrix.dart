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

/// from: com.artifex.mupdf.fitz.Matrix
class Matrix extends jni.JObject {
  @override
  late final jni.JObjType<Matrix> $type = type;

  Matrix.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  static final _class = jni.Jni.findJClass(r"com/artifex/mupdf/fitz/Matrix");

  /// The type which includes information such as the signature of this class.
  static const type = $MatrixType();
  static final _id_a = jni.Jni.accessors.getFieldIDOf(
    _class.reference,
    r"a",
    r"F",
  );

  /// from: public float a
  double get a => jni.Jni.accessors
      .getField(reference, _id_a, jni.JniCallType.floatType)
      .float;

  /// from: public float a
  set a(double value) => jni.Jni.env.SetFloatField(reference, _id_a, value);

  static final _id_b = jni.Jni.accessors.getFieldIDOf(
    _class.reference,
    r"b",
    r"F",
  );

  /// from: public float b
  double get b => jni.Jni.accessors
      .getField(reference, _id_b, jni.JniCallType.floatType)
      .float;

  /// from: public float b
  set b(double value) => jni.Jni.env.SetFloatField(reference, _id_b, value);

  static final _id_c = jni.Jni.accessors.getFieldIDOf(
    _class.reference,
    r"c",
    r"F",
  );

  /// from: public float c
  double get c => jni.Jni.accessors
      .getField(reference, _id_c, jni.JniCallType.floatType)
      .float;

  /// from: public float c
  set c(double value) => jni.Jni.env.SetFloatField(reference, _id_c, value);

  static final _id_d = jni.Jni.accessors.getFieldIDOf(
    _class.reference,
    r"d",
    r"F",
  );

  /// from: public float d
  double get d => jni.Jni.accessors
      .getField(reference, _id_d, jni.JniCallType.floatType)
      .float;

  /// from: public float d
  set d(double value) => jni.Jni.env.SetFloatField(reference, _id_d, value);

  static final _id_e = jni.Jni.accessors.getFieldIDOf(
    _class.reference,
    r"e",
    r"F",
  );

  /// from: public float e
  double get e => jni.Jni.accessors
      .getField(reference, _id_e, jni.JniCallType.floatType)
      .float;

  /// from: public float e
  set e(double value) => jni.Jni.env.SetFloatField(reference, _id_e, value);

  static final _id_f = jni.Jni.accessors.getFieldIDOf(
    _class.reference,
    r"f",
    r"F",
  );

  /// from: public float f
  double get f => jni.Jni.accessors
      .getField(reference, _id_f, jni.JniCallType.floatType)
      .float;

  /// from: public float f
  set f(double value) => jni.Jni.env.SetFloatField(reference, _id_f, value);

  static final _id_ctor = jni.Jni.accessors
      .getMethodIDOf(_class.reference, r"<init>", r"(FFFFFF)V");

  /// from: public void <init>(float f, float f1, float f2, float f3, float f4, float f5)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory Matrix(
    double f,
    double f1,
    double f2,
    double f3,
    double f4,
    double f5,
  ) {
    return Matrix.fromRef(
        jni.Jni.accessors.newObjectWithArgs(_class.reference, _id_ctor, [
      jni.JValueFloat(f),
      jni.JValueFloat(f1),
      jni.JValueFloat(f2),
      jni.JValueFloat(f3),
      jni.JValueFloat(f4),
      jni.JValueFloat(f5)
    ]).object);
  }

  static final _id_ctor1 =
      jni.Jni.accessors.getMethodIDOf(_class.reference, r"<init>", r"(FFFF)V");

  /// from: public void <init>(float f, float f1, float f2, float f3)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory Matrix.ctor1(
    double f,
    double f1,
    double f2,
    double f3,
  ) {
    return Matrix.fromRef(
        jni.Jni.accessors.newObjectWithArgs(_class.reference, _id_ctor1, [
      jni.JValueFloat(f),
      jni.JValueFloat(f1),
      jni.JValueFloat(f2),
      jni.JValueFloat(f3)
    ]).object);
  }

  static final _id_ctor2 =
      jni.Jni.accessors.getMethodIDOf(_class.reference, r"<init>", r"(FF)V");

  /// from: public void <init>(float f, float f1)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory Matrix.ctor2(
    double f,
    double f1,
  ) {
    return Matrix.fromRef(jni.Jni.accessors.newObjectWithArgs(_class.reference,
        _id_ctor2, [jni.JValueFloat(f), jni.JValueFloat(f1)]).object);
  }

  static final _id_ctor3 =
      jni.Jni.accessors.getMethodIDOf(_class.reference, r"<init>", r"(F)V");

  /// from: public void <init>(float f)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory Matrix.ctor3(
    double f,
  ) {
    return Matrix.fromRef(jni.Jni.accessors.newObjectWithArgs(
        _class.reference, _id_ctor3, [jni.JValueFloat(f)]).object);
  }

  static final _id_ctor4 =
      jni.Jni.accessors.getMethodIDOf(_class.reference, r"<init>", r"()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory Matrix.ctor4() {
    return Matrix.fromRef(jni.Jni.accessors
        .newObjectWithArgs(_class.reference, _id_ctor4, []).object);
  }

  static final _id_ctor5 = jni.Jni.accessors.getMethodIDOf(
      _class.reference, r"<init>", r"(Lcom/artifex/mupdf/fitz/Matrix;)V");

  /// from: public void <init>(com.artifex.mupdf.fitz.Matrix matrix)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory Matrix.ctor5(
    Matrix matrix,
  ) {
    return Matrix.fromRef(jni.Jni.accessors.newObjectWithArgs(
        _class.reference, _id_ctor5, [matrix.reference]).object);
  }

  static final _id_ctor6 = jni.Jni.accessors.getMethodIDOf(
      _class.reference,
      r"<init>",
      r"(Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Matrix;)V");

  /// from: public void <init>(com.artifex.mupdf.fitz.Matrix matrix, com.artifex.mupdf.fitz.Matrix matrix1)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory Matrix.ctor6(
    Matrix matrix,
    Matrix matrix1,
  ) {
    return Matrix.fromRef(jni.Jni.accessors.newObjectWithArgs(_class.reference,
        _id_ctor6, [matrix.reference, matrix1.reference]).object);
  }

  static final _id_concat = jni.Jni.accessors.getMethodIDOf(
      _class.reference,
      r"concat",
      r"(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: public com.artifex.mupdf.fitz.Matrix concat(com.artifex.mupdf.fitz.Matrix matrix)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Matrix concat(
    Matrix matrix,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors.callMethodWithArgs(
        reference,
        _id_concat,
        jni.JniCallType.objectType,
        [matrix.reference]).object);
  }

  static final _id_scale = jni.Jni.accessors.getMethodIDOf(
      _class.reference, r"scale", r"(FF)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: public com.artifex.mupdf.fitz.Matrix scale(float f, float f1)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Matrix scale(
    double f,
    double f1,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors.callMethodWithArgs(
        reference,
        _id_scale,
        jni.JniCallType.objectType,
        [jni.JValueFloat(f), jni.JValueFloat(f1)]).object);
  }

  static final _id_scale1 = jni.Jni.accessors.getMethodIDOf(
      _class.reference, r"scale", r"(F)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: public com.artifex.mupdf.fitz.Matrix scale(float f)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Matrix scale1(
    double f,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors.callMethodWithArgs(
        reference,
        _id_scale1,
        jni.JniCallType.objectType,
        [jni.JValueFloat(f)]).object);
  }

  static final _id_translate = jni.Jni.accessors.getMethodIDOf(
      _class.reference, r"translate", r"(FF)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: public com.artifex.mupdf.fitz.Matrix translate(float f, float f1)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Matrix translate(
    double f,
    double f1,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors.callMethodWithArgs(
        reference,
        _id_translate,
        jni.JniCallType.objectType,
        [jni.JValueFloat(f), jni.JValueFloat(f1)]).object);
  }

  static final _id_invert = jni.Jni.accessors.getMethodIDOf(
      _class.reference, r"invert", r"()Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: public com.artifex.mupdf.fitz.Matrix invert()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Matrix invert() {
    return const $MatrixType().fromRef(jni.Jni.accessors.callMethodWithArgs(
        reference, _id_invert, jni.JniCallType.objectType, []).object);
  }

  static final _id_rotate = jni.Jni.accessors.getMethodIDOf(
      _class.reference, r"rotate", r"(F)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: public com.artifex.mupdf.fitz.Matrix rotate(float f)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Matrix rotate(
    double f,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors.callMethodWithArgs(
        reference,
        _id_rotate,
        jni.JniCallType.objectType,
        [jni.JValueFloat(f)]).object);
  }

  static final _id_toString1 = jni.Jni.accessors
      .getMethodIDOf(_class.reference, r"toString", r"()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JString toString1() {
    return const jni.JStringType().fromRef(jni.Jni.accessors.callMethodWithArgs(
        reference, _id_toString1, jni.JniCallType.objectType, []).object);
  }

  static final _id_Identity = jni.Jni.accessors.getStaticMethodIDOf(
      _class.reference, r"Identity", r"()Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: static public com.artifex.mupdf.fitz.Matrix Identity()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Matrix Identity() {
    return const $MatrixType().fromRef(jni.Jni.accessors
        .callStaticMethodWithArgs(_class.reference, _id_Identity,
            jni.JniCallType.objectType, []).object);
  }

  static final _id_Scale = jni.Jni.accessors.getStaticMethodIDOf(
      _class.reference, r"Scale", r"(F)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: static public com.artifex.mupdf.fitz.Matrix Scale(float f)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Matrix Scale(
    double f,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors
        .callStaticMethodWithArgs(_class.reference, _id_Scale,
            jni.JniCallType.objectType, [jni.JValueFloat(f)]).object);
  }

  static final _id_Scale1 = jni.Jni.accessors.getStaticMethodIDOf(
      _class.reference, r"Scale", r"(FF)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: static public com.artifex.mupdf.fitz.Matrix Scale(float f, float f1)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Matrix Scale1(
    double f,
    double f1,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors
        .callStaticMethodWithArgs(
            _class.reference,
            _id_Scale1,
            jni.JniCallType.objectType,
            [jni.JValueFloat(f), jni.JValueFloat(f1)]).object);
  }

  static final _id_Translate = jni.Jni.accessors.getStaticMethodIDOf(
      _class.reference, r"Translate", r"(FF)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: static public com.artifex.mupdf.fitz.Matrix Translate(float f, float f1)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Matrix Translate(
    double f,
    double f1,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors
        .callStaticMethodWithArgs(
            _class.reference,
            _id_Translate,
            jni.JniCallType.objectType,
            [jni.JValueFloat(f), jni.JValueFloat(f1)]).object);
  }

  static final _id_Rotate = jni.Jni.accessors.getStaticMethodIDOf(
      _class.reference, r"Rotate", r"(F)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: static public com.artifex.mupdf.fitz.Matrix Rotate(float f)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Matrix Rotate(
    double f,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors
        .callStaticMethodWithArgs(_class.reference, _id_Rotate,
            jni.JniCallType.objectType, [jni.JValueFloat(f)]).object);
  }

  static final _id_Inverted = jni.Jni.accessors.getStaticMethodIDOf(
      _class.reference,
      r"Inverted",
      r"(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Matrix;");

  /// from: static public com.artifex.mupdf.fitz.Matrix Inverted(com.artifex.mupdf.fitz.Matrix matrix)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Matrix Inverted(
    Matrix matrix,
  ) {
    return const $MatrixType().fromRef(jni.Jni.accessors
        .callStaticMethodWithArgs(_class.reference, _id_Inverted,
            jni.JniCallType.objectType, [matrix.reference]).object);
  }
}

class $MatrixType extends jni.JObjType<Matrix> {
  const $MatrixType();

  @override
  String get signature => r"Lcom/artifex/mupdf/fitz/Matrix;";

  @override
  Matrix fromRef(jni.JObjectPtr ref) => Matrix.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($MatrixType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($MatrixType) && other is $MatrixType;
  }
}
