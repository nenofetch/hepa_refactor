// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bmr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BMR {
  String get result;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BMRCopyWith<BMR> get copyWith =>
      _$BMRCopyWithImpl<BMR>(this as BMR, _$identity);

  /// Serializes this BMR to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BMR &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @override
  String toString() {
    return 'BMR(result: $result)';
  }
}

/// @nodoc
abstract mixin class $BMRCopyWith<$Res> {
  factory $BMRCopyWith(BMR value, $Res Function(BMR) _then) = _$BMRCopyWithImpl;
  @useResult
  $Res call({String result});
}

/// @nodoc
class _$BMRCopyWithImpl<$Res> implements $BMRCopyWith<$Res> {
  _$BMRCopyWithImpl(this._self, this._then);

  final BMR _self;
  final $Res Function(BMR) _then;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_self.copyWith(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BMR implements BMR {
  const _BMR({required this.result});
  factory _BMR.fromJson(Map<String, dynamic> json) => _$BMRFromJson(json);

  @override
  final String result;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BMRCopyWith<_BMR> get copyWith =>
      __$BMRCopyWithImpl<_BMR>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BMRToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BMR &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @override
  String toString() {
    return 'BMR(result: $result)';
  }
}

/// @nodoc
abstract mixin class _$BMRCopyWith<$Res> implements $BMRCopyWith<$Res> {
  factory _$BMRCopyWith(_BMR value, $Res Function(_BMR) _then) =
      __$BMRCopyWithImpl;
  @override
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$BMRCopyWithImpl<$Res> implements _$BMRCopyWith<$Res> {
  __$BMRCopyWithImpl(this._self, this._then);

  final _BMR _self;
  final $Res Function(_BMR) _then;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(_BMR(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
