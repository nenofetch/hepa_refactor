// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tdee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tdee _$TdeeFromJson(Map<String, dynamic> json) {
  return _Tdee.fromJson(json);
}

/// @nodoc
mixin _$Tdee {
  String get result => throw _privateConstructorUsedError;

  /// Serializes this Tdee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tdee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TdeeCopyWith<Tdee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TdeeCopyWith<$Res> {
  factory $TdeeCopyWith(Tdee value, $Res Function(Tdee) then) =
      _$TdeeCopyWithImpl<$Res, Tdee>;
  @useResult
  $Res call({String result});
}

/// @nodoc
class _$TdeeCopyWithImpl<$Res, $Val extends Tdee>
    implements $TdeeCopyWith<$Res> {
  _$TdeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tdee
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
abstract class _$$TdeeImplCopyWith<$Res> implements $TdeeCopyWith<$Res> {
  factory _$$TdeeImplCopyWith(
          _$TdeeImpl value, $Res Function(_$TdeeImpl) then) =
      __$$TdeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$$TdeeImplCopyWithImpl<$Res>
    extends _$TdeeCopyWithImpl<$Res, _$TdeeImpl>
    implements _$$TdeeImplCopyWith<$Res> {
  __$$TdeeImplCopyWithImpl(_$TdeeImpl _value, $Res Function(_$TdeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tdee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$TdeeImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TdeeImpl implements _Tdee {
  const _$TdeeImpl({required this.result});

  factory _$TdeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TdeeImplFromJson(json);

  @override
  final String result;

  @override
  String toString() {
    return 'Tdee(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TdeeImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of Tdee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TdeeImplCopyWith<_$TdeeImpl> get copyWith =>
      __$$TdeeImplCopyWithImpl<_$TdeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TdeeImplToJson(
      this,
    );
  }
}

abstract class _Tdee implements Tdee {
  const factory _Tdee({required final String result}) = _$TdeeImpl;

  factory _Tdee.fromJson(Map<String, dynamic> json) = _$TdeeImpl.fromJson;

  @override
  String get result;

  /// Create a copy of Tdee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TdeeImplCopyWith<_$TdeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
