// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anthropometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Anthropometry {
  double get imt;
  String get result;

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnthropometryCopyWith<Anthropometry> get copyWith =>
      _$AnthropometryCopyWithImpl<Anthropometry>(
          this as Anthropometry, _$identity);

  /// Serializes this Anthropometry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Anthropometry &&
            (identical(other.imt, imt) || other.imt == imt) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imt, result);

  @override
  String toString() {
    return 'Anthropometry(imt: $imt, result: $result)';
  }
}

/// @nodoc
abstract mixin class $AnthropometryCopyWith<$Res> {
  factory $AnthropometryCopyWith(
          Anthropometry value, $Res Function(Anthropometry) _then) =
      _$AnthropometryCopyWithImpl;
  @useResult
  $Res call({double imt, String result});
}

/// @nodoc
class _$AnthropometryCopyWithImpl<$Res>
    implements $AnthropometryCopyWith<$Res> {
  _$AnthropometryCopyWithImpl(this._self, this._then);

  final Anthropometry _self;
  final $Res Function(Anthropometry) _then;

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imt = null,
    Object? result = null,
  }) {
    return _then(_self.copyWith(
      imt: null == imt
          ? _self.imt
          : imt // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Anthropometry implements Anthropometry {
  const _Anthropometry({required this.imt, required this.result});
  factory _Anthropometry.fromJson(Map<String, dynamic> json) =>
      _$AnthropometryFromJson(json);

  @override
  final double imt;
  @override
  final String result;

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnthropometryCopyWith<_Anthropometry> get copyWith =>
      __$AnthropometryCopyWithImpl<_Anthropometry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnthropometryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Anthropometry &&
            (identical(other.imt, imt) || other.imt == imt) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imt, result);

  @override
  String toString() {
    return 'Anthropometry(imt: $imt, result: $result)';
  }
}

/// @nodoc
abstract mixin class _$AnthropometryCopyWith<$Res>
    implements $AnthropometryCopyWith<$Res> {
  factory _$AnthropometryCopyWith(
          _Anthropometry value, $Res Function(_Anthropometry) _then) =
      __$AnthropometryCopyWithImpl;
  @override
  @useResult
  $Res call({double imt, String result});
}

/// @nodoc
class __$AnthropometryCopyWithImpl<$Res>
    implements _$AnthropometryCopyWith<$Res> {
  __$AnthropometryCopyWithImpl(this._self, this._then);

  final _Anthropometry _self;
  final $Res Function(_Anthropometry) _then;

  /// Create a copy of Anthropometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imt = null,
    Object? result = null,
  }) {
    return _then(_Anthropometry(
      imt: null == imt
          ? _self.imt
          : imt // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
