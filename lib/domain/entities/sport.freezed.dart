// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sport {
  int get id;
  String get name;
  @JsonKey(name: 'five_minute_calories')
  String get fiveMinutesCalories;
  @JsonKey(name: 'fifteen_minute_calories')
  String get fifteenMinuteCalories;
  @JsonKey(name: 'thirty_minute_calories')
  String get thirtyMinutesCalories;
  @JsonKey(name: 'one_hour_calories')
  String get oneHourCalories;

  /// Create a copy of Sport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SportCopyWith<Sport> get copyWith =>
      _$SportCopyWithImpl<Sport>(this as Sport, _$identity);

  /// Serializes this Sport to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Sport &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fiveMinutesCalories,
      fifteenMinuteCalories, thirtyMinutesCalories, oneHourCalories);

  @override
  String toString() {
    return 'Sport(id: $id, name: $name, fiveMinutesCalories: $fiveMinutesCalories, fifteenMinuteCalories: $fifteenMinuteCalories, thirtyMinutesCalories: $thirtyMinutesCalories, oneHourCalories: $oneHourCalories)';
  }
}

/// @nodoc
abstract mixin class $SportCopyWith<$Res> {
  factory $SportCopyWith(Sport value, $Res Function(Sport) _then) =
      _$SportCopyWithImpl;
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
class _$SportCopyWithImpl<$Res> implements $SportCopyWith<$Res> {
  _$SportCopyWithImpl(this._self, this._then);

  final Sport _self;
  final $Res Function(Sport) _then;

  /// Create a copy of Sport
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fiveMinutesCalories: null == fiveMinutesCalories
          ? _self.fiveMinutesCalories
          : fiveMinutesCalories // ignore: cast_nullable_to_non_nullable
              as String,
      fifteenMinuteCalories: null == fifteenMinuteCalories
          ? _self.fifteenMinuteCalories
          : fifteenMinuteCalories // ignore: cast_nullable_to_non_nullable
              as String,
      thirtyMinutesCalories: null == thirtyMinutesCalories
          ? _self.thirtyMinutesCalories
          : thirtyMinutesCalories // ignore: cast_nullable_to_non_nullable
              as String,
      oneHourCalories: null == oneHourCalories
          ? _self.oneHourCalories
          : oneHourCalories // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Sport implements Sport {
  const _Sport(
      {required this.id,
      required this.name,
      @JsonKey(name: 'five_minute_calories') required this.fiveMinutesCalories,
      @JsonKey(name: 'fifteen_minute_calories')
      required this.fifteenMinuteCalories,
      @JsonKey(name: 'thirty_minute_calories')
      required this.thirtyMinutesCalories,
      @JsonKey(name: 'one_hour_calories') required this.oneHourCalories});
  factory _Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);

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

  /// Create a copy of Sport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SportCopyWith<_Sport> get copyWith =>
      __$SportCopyWithImpl<_Sport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sport &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fiveMinutesCalories,
      fifteenMinuteCalories, thirtyMinutesCalories, oneHourCalories);

  @override
  String toString() {
    return 'Sport(id: $id, name: $name, fiveMinutesCalories: $fiveMinutesCalories, fifteenMinuteCalories: $fifteenMinuteCalories, thirtyMinutesCalories: $thirtyMinutesCalories, oneHourCalories: $oneHourCalories)';
  }
}

/// @nodoc
abstract mixin class _$SportCopyWith<$Res> implements $SportCopyWith<$Res> {
  factory _$SportCopyWith(_Sport value, $Res Function(_Sport) _then) =
      __$SportCopyWithImpl;
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
class __$SportCopyWithImpl<$Res> implements _$SportCopyWith<$Res> {
  __$SportCopyWithImpl(this._self, this._then);

  final _Sport _self;
  final $Res Function(_Sport) _then;

  /// Create a copy of Sport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fiveMinutesCalories = null,
    Object? fifteenMinuteCalories = null,
    Object? thirtyMinutesCalories = null,
    Object? oneHourCalories = null,
  }) {
    return _then(_Sport(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fiveMinutesCalories: null == fiveMinutesCalories
          ? _self.fiveMinutesCalories
          : fiveMinutesCalories // ignore: cast_nullable_to_non_nullable
              as String,
      fifteenMinuteCalories: null == fifteenMinuteCalories
          ? _self.fifteenMinuteCalories
          : fifteenMinuteCalories // ignore: cast_nullable_to_non_nullable
              as String,
      thirtyMinutesCalories: null == thirtyMinutesCalories
          ? _self.thirtyMinutesCalories
          : thirtyMinutesCalories // ignore: cast_nullable_to_non_nullable
              as String,
      oneHourCalories: null == oneHourCalories
          ? _self.oneHourCalories
          : oneHourCalories // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
