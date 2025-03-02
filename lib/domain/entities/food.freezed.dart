// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Food {
  int? get id;
  String? get name;
  String? get categories;
  String? get portion;
  String? get calories;
  String? get proteins;
  String? get carbohydrate;
  String? get fat;
  String? get fiber;
  String? get sugar;
  List<int>? get foods;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FoodCopyWith<Food> get copyWith =>
      _$FoodCopyWithImpl<Food>(this as Food, _$identity);

  /// Serializes this Food to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Food &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.portion, portion) || other.portion == portion) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.fiber, fiber) || other.fiber == fiber) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            const DeepCollectionEquality().equals(other.foods, foods));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      categories,
      portion,
      calories,
      proteins,
      carbohydrate,
      fat,
      fiber,
      sugar,
      const DeepCollectionEquality().hash(foods));

  @override
  String toString() {
    return 'Food(id: $id, name: $name, categories: $categories, portion: $portion, calories: $calories, proteins: $proteins, carbohydrate: $carbohydrate, fat: $fat, fiber: $fiber, sugar: $sugar, foods: $foods)';
  }
}

/// @nodoc
abstract mixin class $FoodCopyWith<$Res> {
  factory $FoodCopyWith(Food value, $Res Function(Food) _then) =
      _$FoodCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? categories,
      String? portion,
      String? calories,
      String? proteins,
      String? carbohydrate,
      String? fat,
      String? fiber,
      String? sugar,
      List<int>? foods});
}

/// @nodoc
class _$FoodCopyWithImpl<$Res> implements $FoodCopyWith<$Res> {
  _$FoodCopyWithImpl(this._self, this._then);

  final Food _self;
  final $Res Function(Food) _then;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? categories = freezed,
    Object? portion = freezed,
    Object? calories = freezed,
    Object? proteins = freezed,
    Object? carbohydrate = freezed,
    Object? fat = freezed,
    Object? fiber = freezed,
    Object? sugar = freezed,
    Object? foods = freezed,
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
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
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
      fiber: freezed == fiber
          ? _self.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as String?,
      sugar: freezed == sugar
          ? _self.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as String?,
      foods: freezed == foods
          ? _self.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Food implements Food {
  const _Food(
      {this.id,
      this.name,
      this.categories,
      this.portion,
      this.calories,
      this.proteins,
      this.carbohydrate,
      this.fat,
      this.fiber,
      this.sugar,
      final List<int>? foods})
      : _foods = foods;
  factory _Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? categories;
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
  final String? fiber;
  @override
  final String? sugar;
  final List<int>? _foods;
  @override
  List<int>? get foods {
    final value = _foods;
    if (value == null) return null;
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FoodCopyWith<_Food> get copyWith =>
      __$FoodCopyWithImpl<_Food>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FoodToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Food &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.portion, portion) || other.portion == portion) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.fiber, fiber) || other.fiber == fiber) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      categories,
      portion,
      calories,
      proteins,
      carbohydrate,
      fat,
      fiber,
      sugar,
      const DeepCollectionEquality().hash(_foods));

  @override
  String toString() {
    return 'Food(id: $id, name: $name, categories: $categories, portion: $portion, calories: $calories, proteins: $proteins, carbohydrate: $carbohydrate, fat: $fat, fiber: $fiber, sugar: $sugar, foods: $foods)';
  }
}

/// @nodoc
abstract mixin class _$FoodCopyWith<$Res> implements $FoodCopyWith<$Res> {
  factory _$FoodCopyWith(_Food value, $Res Function(_Food) _then) =
      __$FoodCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? categories,
      String? portion,
      String? calories,
      String? proteins,
      String? carbohydrate,
      String? fat,
      String? fiber,
      String? sugar,
      List<int>? foods});
}

/// @nodoc
class __$FoodCopyWithImpl<$Res> implements _$FoodCopyWith<$Res> {
  __$FoodCopyWithImpl(this._self, this._then);

  final _Food _self;
  final $Res Function(_Food) _then;

  /// Create a copy of Food
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? categories = freezed,
    Object? portion = freezed,
    Object? calories = freezed,
    Object? proteins = freezed,
    Object? carbohydrate = freezed,
    Object? fat = freezed,
    Object? fiber = freezed,
    Object? sugar = freezed,
    Object? foods = freezed,
  }) {
    return _then(_Food(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
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
      fiber: freezed == fiber
          ? _self.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as String?,
      sugar: freezed == sugar
          ? _self.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as String?,
      foods: freezed == foods
          ? _self._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

// dart format on
