// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snack.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Snack {
  int? get id;
  String? get name;
  String? get category;
  String? get portion;
  String? get calories;
  String? get proteins;
  String? get carbohydrate;
  String? get fat;
  String? get sugar;
  List<int>? get snacks;

  /// Create a copy of Snack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnackCopyWith<Snack> get copyWith =>
      _$SnackCopyWithImpl<Snack>(this as Snack, _$identity);

  /// Serializes this Snack to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Snack &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.portion, portion) || other.portion == portion) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            const DeepCollectionEquality().equals(other.snacks, snacks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      category,
      portion,
      calories,
      proteins,
      carbohydrate,
      fat,
      sugar,
      const DeepCollectionEquality().hash(snacks));

  @override
  String toString() {
    return 'Snack(id: $id, name: $name, category: $category, portion: $portion, calories: $calories, proteins: $proteins, carbohydrate: $carbohydrate, fat: $fat, sugar: $sugar, snacks: $snacks)';
  }
}

/// @nodoc
abstract mixin class $SnackCopyWith<$Res> {
  factory $SnackCopyWith(Snack value, $Res Function(Snack) _then) =
      _$SnackCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? category,
      String? portion,
      String? calories,
      String? proteins,
      String? carbohydrate,
      String? fat,
      String? sugar,
      List<int>? snacks});
}

/// @nodoc
class _$SnackCopyWithImpl<$Res> implements $SnackCopyWith<$Res> {
  _$SnackCopyWithImpl(this._self, this._then);

  final Snack _self;
  final $Res Function(Snack) _then;

  /// Create a copy of Snack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? portion = freezed,
    Object? calories = freezed,
    Object? proteins = freezed,
    Object? carbohydrate = freezed,
    Object? fat = freezed,
    Object? sugar = freezed,
    Object? snacks = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      portion: freezed == portion
          ? _self.portion
          : portion // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: freezed == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String?,
      proteins: freezed == proteins
          ? _self.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as String?,
      carbohydrate: freezed == carbohydrate
          ? _self.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String?,
      fat: freezed == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String?,
      sugar: freezed == sugar
          ? _self.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as String?,
      snacks: freezed == snacks
          ? _self.snacks
          : snacks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Snack implements Snack {
  const _Snack(
      {this.id,
      this.name,
      this.category,
      this.portion,
      this.calories,
      this.proteins,
      this.carbohydrate,
      this.fat,
      this.sugar,
      final List<int>? snacks})
      : _snacks = snacks;
  factory _Snack.fromJson(Map<String, dynamic> json) => _$SnackFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? category;
  @override
  final String? portion;
  @override
  final String? calories;
  @override
  final String? proteins;
  @override
  final String? carbohydrate;
  @override
  final String? fat;
  @override
  final String? sugar;
  final List<int>? _snacks;
  @override
  List<int>? get snacks {
    final value = _snacks;
    if (value == null) return null;
    if (_snacks is EqualUnmodifiableListView) return _snacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Snack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnackCopyWith<_Snack> get copyWith =>
      __$SnackCopyWithImpl<_Snack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Snack &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.portion, portion) || other.portion == portion) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            const DeepCollectionEquality().equals(other._snacks, _snacks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      category,
      portion,
      calories,
      proteins,
      carbohydrate,
      fat,
      sugar,
      const DeepCollectionEquality().hash(_snacks));

  @override
  String toString() {
    return 'Snack(id: $id, name: $name, category: $category, portion: $portion, calories: $calories, proteins: $proteins, carbohydrate: $carbohydrate, fat: $fat, sugar: $sugar, snacks: $snacks)';
  }
}

/// @nodoc
abstract mixin class _$SnackCopyWith<$Res> implements $SnackCopyWith<$Res> {
  factory _$SnackCopyWith(_Snack value, $Res Function(_Snack) _then) =
      __$SnackCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? category,
      String? portion,
      String? calories,
      String? proteins,
      String? carbohydrate,
      String? fat,
      String? sugar,
      List<int>? snacks});
}

/// @nodoc
class __$SnackCopyWithImpl<$Res> implements _$SnackCopyWith<$Res> {
  __$SnackCopyWithImpl(this._self, this._then);

  final _Snack _self;
  final $Res Function(_Snack) _then;

  /// Create a copy of Snack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? portion = freezed,
    Object? calories = freezed,
    Object? proteins = freezed,
    Object? carbohydrate = freezed,
    Object? fat = freezed,
    Object? sugar = freezed,
    Object? snacks = freezed,
  }) {
    return _then(_Snack(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      portion: freezed == portion
          ? _self.portion
          : portion // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: freezed == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String?,
      proteins: freezed == proteins
          ? _self.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as String?,
      carbohydrate: freezed == carbohydrate
          ? _self.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String?,
      fat: freezed == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String?,
      sugar: freezed == sugar
          ? _self.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as String?,
      snacks: freezed == snacks
          ? _self._snacks
          : snacks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

// dart format on
