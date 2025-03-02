// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tdee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tdee {
  String get result;

  /// Create a copy of Tdee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TdeeCopyWith<Tdee> get copyWith =>
      _$TdeeCopyWithImpl<Tdee>(this as Tdee, _$identity);

  /// Serializes this Tdee to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tdee &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @override
  String toString() {
    return 'Tdee(result: $result)';
  }
}

/// @nodoc
abstract mixin class $TdeeCopyWith<$Res> {
  factory $TdeeCopyWith(Tdee value, $Res Function(Tdee) _then) =
      _$TdeeCopyWithImpl;
  @useResult
  $Res call({String result});
}

/// @nodoc
class _$TdeeCopyWithImpl<$Res> implements $TdeeCopyWith<$Res> {
  _$TdeeCopyWithImpl(this._self, this._then);

  final Tdee _self;
  final $Res Function(Tdee) _then;

  /// Create a copy of Tdee
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
class _Tdee implements Tdee {
  const _Tdee({required this.result});
  factory _Tdee.fromJson(Map<String, dynamic> json) => _$TdeeFromJson(json);

  @override
  final String result;

  /// Create a copy of Tdee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TdeeCopyWith<_Tdee> get copyWith =>
      __$TdeeCopyWithImpl<_Tdee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TdeeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tdee &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @override
  String toString() {
    return 'Tdee(result: $result)';
  }
}

/// @nodoc
abstract mixin class _$TdeeCopyWith<$Res> implements $TdeeCopyWith<$Res> {
  factory _$TdeeCopyWith(_Tdee value, $Res Function(_Tdee) _then) =
      __$TdeeCopyWithImpl;
  @override
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$TdeeCopyWithImpl<$Res> implements _$TdeeCopyWith<$Res> {
  __$TdeeCopyWithImpl(this._self, this._then);

  final _Tdee _self;
  final $Res Function(_Tdee) _then;

  /// Create a copy of Tdee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(_Tdee(
      result: null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
