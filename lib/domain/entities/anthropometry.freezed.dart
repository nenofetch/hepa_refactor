// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anthropometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Anthropometry _$AnthropometryFromJson(Map<String, dynamic> json) {
  return _Anthropometry.fromJson(json);
}

/// @nodoc
mixin _$Anthropometry {
  double get imt => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  /// Serializes this Anthropometry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnthropometryCopyWith<Anthropometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnthropometryCopyWith<$Res> {
  factory $AnthropometryCopyWith(
          Anthropometry value, $Res Function(Anthropometry) then) =
      _$AnthropometryCopyWithImpl<$Res, Anthropometry>;
  @useResult
  $Res call({double imt, String result});
}

/// @nodoc
class _$AnthropometryCopyWithImpl<$Res, $Val extends Anthropometry>
    implements $AnthropometryCopyWith<$Res> {
  _$AnthropometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imt = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      imt: null == imt
          ? _value.imt
          : imt // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnthropometryImplCopyWith<$Res>
    implements $AnthropometryCopyWith<$Res> {
  factory _$$AnthropometryImplCopyWith(
          _$AnthropometryImpl value, $Res Function(_$AnthropometryImpl) then) =
      __$$AnthropometryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double imt, String result});
}

/// @nodoc
class __$$AnthropometryImplCopyWithImpl<$Res>
    extends _$AnthropometryCopyWithImpl<$Res, _$AnthropometryImpl>
    implements _$$AnthropometryImplCopyWith<$Res> {
  __$$AnthropometryImplCopyWithImpl(
      _$AnthropometryImpl _value, $Res Function(_$AnthropometryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imt = null,
    Object? result = null,
  }) {
    return _then(_$AnthropometryImpl(
      imt: null == imt
          ? _value.imt
          : imt // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnthropometryImpl implements _Anthropometry {
  const _$AnthropometryImpl({required this.imt, required this.result});

  factory _$AnthropometryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnthropometryImplFromJson(json);

  @override
  final double imt;
  @override
  final String result;

  @override
  String toString() {
    return 'Anthropometry(imt: $imt, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnthropometryImpl &&
            (identical(other.imt, imt) || other.imt == imt) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imt, result);

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnthropometryImplCopyWith<_$AnthropometryImpl> get copyWith =>
      __$$AnthropometryImplCopyWithImpl<_$AnthropometryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnthropometryImplToJson(
      this,
    );
  }
}

abstract class _Anthropometry implements Anthropometry {
  const factory _Anthropometry(
      {required final double imt,
      required final String result}) = _$AnthropometryImpl;

  factory _Anthropometry.fromJson(Map<String, dynamic> json) =
      _$AnthropometryImpl.fromJson;

  @override
  double get imt;
  @override
  String get result;

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnthropometryImplCopyWith<_$AnthropometryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
