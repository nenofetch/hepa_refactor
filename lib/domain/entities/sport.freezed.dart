// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sport _$SportFromJson(Map<String, dynamic> json) {
  return _Sport.fromJson(json);
}

/// @nodoc
mixin _$Sport {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'five_minute_calories')
  String get fiveMinutesCalories => throw _privateConstructorUsedError;
  @JsonKey(name: 'fifteen_minute_calories')
  String get fifteenMinuteCalories => throw _privateConstructorUsedError;
  @JsonKey(name: 'thirty_minute_calories')
  String get thirtyMinutesCalories => throw _privateConstructorUsedError;
  @JsonKey(name: 'one_hour_calories')
  String get oneHourCalories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportCopyWith<Sport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportCopyWith<$Res> {
  factory $SportCopyWith(Sport value, $Res Function(Sport) then) =
      _$SportCopyWithImpl<$Res, Sport>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'five_minute_calories') String fiveMinutesCalories,
      @JsonKey(name: 'fifteen_minute_calories') String fifteenMinuteCalories,
      @JsonKey(name: 'thirty_minute_calories') String thirtyMinutesCalories,
      @JsonKey(name: 'one_hour_calories') String oneHourCalories});
}

/// @nodoc
class _$SportCopyWithImpl<$Res, $Val extends Sport>
    implements $SportCopyWith<$Res> {
  _$SportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fiveMinutesCalories = null,
    Object? fifteenMinuteCalories = null,
    Object? thirtyMinutesCalories = null,
    Object? oneHourCalories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fiveMinutesCalories: null == fiveMinutesCalories
          ? _value.fiveMinutesCalories
          : fiveMinutesCalories // ignore: cast_nullable_to_non_nullable
              as String,
      fifteenMinuteCalories: null == fifteenMinuteCalories
          ? _value.fifteenMinuteCalories
          : fifteenMinuteCalories // ignore: cast_nullable_to_non_nullable
              as String,
      thirtyMinutesCalories: null == thirtyMinutesCalories
          ? _value.thirtyMinutesCalories
          : thirtyMinutesCalories // ignore: cast_nullable_to_non_nullable
              as String,
      oneHourCalories: null == oneHourCalories
          ? _value.oneHourCalories
          : oneHourCalories // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SportImplCopyWith<$Res> implements $SportCopyWith<$Res> {
  factory _$$SportImplCopyWith(
          _$SportImpl value, $Res Function(_$SportImpl) then) =
      __$$SportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'five_minute_calories') String fiveMinutesCalories,
      @JsonKey(name: 'fifteen_minute_calories') String fifteenMinuteCalories,
      @JsonKey(name: 'thirty_minute_calories') String thirtyMinutesCalories,
      @JsonKey(name: 'one_hour_calories') String oneHourCalories});
}

/// @nodoc
class __$$SportImplCopyWithImpl<$Res>
    extends _$SportCopyWithImpl<$Res, _$SportImpl>
    implements _$$SportImplCopyWith<$Res> {
  __$$SportImplCopyWithImpl(
      _$SportImpl _value, $Res Function(_$SportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fiveMinutesCalories = null,
    Object? fifteenMinuteCalories = null,
    Object? thirtyMinutesCalories = null,
    Object? oneHourCalories = null,
  }) {
    return _then(_$SportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fiveMinutesCalories: null == fiveMinutesCalories
          ? _value.fiveMinutesCalories
          : fiveMinutesCalories // ignore: cast_nullable_to_non_nullable
              as String,
      fifteenMinuteCalories: null == fifteenMinuteCalories
          ? _value.fifteenMinuteCalories
          : fifteenMinuteCalories // ignore: cast_nullable_to_non_nullable
              as String,
      thirtyMinutesCalories: null == thirtyMinutesCalories
          ? _value.thirtyMinutesCalories
          : thirtyMinutesCalories // ignore: cast_nullable_to_non_nullable
              as String,
      oneHourCalories: null == oneHourCalories
          ? _value.oneHourCalories
          : oneHourCalories // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SportImpl implements _Sport {
  const _$SportImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'five_minute_calories') required this.fiveMinutesCalories,
      @JsonKey(name: 'fifteen_minute_calories')
      required this.fifteenMinuteCalories,
      @JsonKey(name: 'thirty_minute_calories')
      required this.thirtyMinutesCalories,
      @JsonKey(name: 'one_hour_calories') required this.oneHourCalories});

  factory _$SportImpl.fromJson(Map<String, dynamic> json) =>
      _$$SportImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'five_minute_calories')
  final String fiveMinutesCalories;
  @override
  @JsonKey(name: 'fifteen_minute_calories')
  final String fifteenMinuteCalories;
  @override
  @JsonKey(name: 'thirty_minute_calories')
  final String thirtyMinutesCalories;
  @override
  @JsonKey(name: 'one_hour_calories')
  final String oneHourCalories;

  @override
  String toString() {
    return 'Sport(id: $id, name: $name, fiveMinutesCalories: $fiveMinutesCalories, fifteenMinuteCalories: $fifteenMinuteCalories, thirtyMinutesCalories: $thirtyMinutesCalories, oneHourCalories: $oneHourCalories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fiveMinutesCalories, fiveMinutesCalories) ||
                other.fiveMinutesCalories == fiveMinutesCalories) &&
            (identical(other.fifteenMinuteCalories, fifteenMinuteCalories) ||
                other.fifteenMinuteCalories == fifteenMinuteCalories) &&
            (identical(other.thirtyMinutesCalories, thirtyMinutesCalories) ||
                other.thirtyMinutesCalories == thirtyMinutesCalories) &&
            (identical(other.oneHourCalories, oneHourCalories) ||
                other.oneHourCalories == oneHourCalories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fiveMinutesCalories,
      fifteenMinuteCalories, thirtyMinutesCalories, oneHourCalories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportImplCopyWith<_$SportImpl> get copyWith =>
      __$$SportImplCopyWithImpl<_$SportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SportImplToJson(
      this,
    );
  }
}

abstract class _Sport implements Sport {
  const factory _Sport(
      {required final int id,
      required final String name,
      @JsonKey(name: 'five_minute_calories')
      required final String fiveMinutesCalories,
      @JsonKey(name: 'fifteen_minute_calories')
      required final String fifteenMinuteCalories,
      @JsonKey(name: 'thirty_minute_calories')
      required final String thirtyMinutesCalories,
      @JsonKey(name: 'one_hour_calories')
      required final String oneHourCalories}) = _$SportImpl;

  factory _Sport.fromJson(Map<String, dynamic> json) = _$SportImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'five_minute_calories')
  String get fiveMinutesCalories;
  @override
  @JsonKey(name: 'fifteen_minute_calories')
  String get fifteenMinuteCalories;
  @override
  @JsonKey(name: 'thirty_minute_calories')
  String get thirtyMinutesCalories;
  @override
  @JsonKey(name: 'one_hour_calories')
  String get oneHourCalories;
  @override
  @JsonKey(ignore: true)
  _$$SportImplCopyWith<_$SportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
