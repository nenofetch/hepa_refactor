// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bmr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BMR _$BMRFromJson(Map<String, dynamic> json) {
  return _BMR.fromJson(json);
}

/// @nodoc
mixin _$BMR {
  String get result => throw _privateConstructorUsedError;

  /// Serializes this BMR to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BMRCopyWith<BMR> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BMRCopyWith<$Res> {
  factory $BMRCopyWith(BMR value, $Res Function(BMR) then) =
      _$BMRCopyWithImpl<$Res, BMR>;
  @useResult
  $Res call({String result});
}

/// @nodoc
class _$BMRCopyWithImpl<$Res, $Val extends BMR> implements $BMRCopyWith<$Res> {
  _$BMRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BMRImplCopyWith<$Res> implements $BMRCopyWith<$Res> {
  factory _$$BMRImplCopyWith(_$BMRImpl value, $Res Function(_$BMRImpl) then) =
      __$$BMRImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$$BMRImplCopyWithImpl<$Res> extends _$BMRCopyWithImpl<$Res, _$BMRImpl>
    implements _$$BMRImplCopyWith<$Res> {
  __$$BMRImplCopyWithImpl(_$BMRImpl _value, $Res Function(_$BMRImpl) _then)
      : super(_value, _then);

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$BMRImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BMRImpl implements _BMR {
  const _$BMRImpl({required this.result});

  factory _$BMRImpl.fromJson(Map<String, dynamic> json) =>
      _$$BMRImplFromJson(json);

  @override
  final String result;

  @override
  String toString() {
    return 'BMR(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BMRImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BMRImplCopyWith<_$BMRImpl> get copyWith =>
      __$$BMRImplCopyWithImpl<_$BMRImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BMRImplToJson(
      this,
    );
  }
}

abstract class _BMR implements BMR {
  const factory _BMR({required final String result}) = _$BMRImpl;

  factory _BMR.fromJson(Map<String, dynamic> json) = _$BMRImpl.fromJson;

  @override
  String get result;

  /// Create a copy of BMR
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BMRImplCopyWith<_$BMRImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
