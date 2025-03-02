// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Drink {
  int? get id;
  String? get name;
  String? get category;
  String? get calories;
  String? get proteins;
  String? get carbohydrate;
  String? get fat;
  String? get sugar;
  List<int>? get drinks;

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DrinkCopyWith<Drink> get copyWith =>
      _$DrinkCopyWithImpl<Drink>(this as Drink, _$identity);

  /// Serializes this Drink to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Drink &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            const DeepCollectionEquality().equals(other.drinks, drinks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      category,
      calories,
      proteins,
      carbohydrate,
      fat,
      sugar,
      const DeepCollectionEquality().hash(drinks));

  @override
  String toString() {
    return 'Drink(id: $id, name: $name, category: $category, calories: $calories, proteins: $proteins, carbohydrate: $carbohydrate, fat: $fat, sugar: $sugar, drinks: $drinks)';
  }
}

/// @nodoc
abstract mixin class $DrinkCopyWith<$Res> {
  factory $DrinkCopyWith(Drink value, $Res Function(Drink) _then) =
      _$DrinkCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? category,
      String? calories,
      String? proteins,
      String? carbohydrate,
      String? fat,
      String? sugar,
      List<int>? drinks});
}

/// @nodoc
class _$DrinkCopyWithImpl<$Res> implements $DrinkCopyWith<$Res> {
  _$DrinkCopyWithImpl(this._self, this._then);

  final Drink _self;
  final $Res Function(Drink) _then;

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? calories = freezed,
    Object? proteins = freezed,
    Object? carbohydrate = freezed,
    Object? fat = freezed,
    Object? sugar = freezed,
    Object? drinks = freezed,
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
      drinks: freezed == drinks
          ? _self.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Drink implements Drink {
  const _Drink(
      {this.id,
      this.name,
      this.category,
      this.calories,
      this.proteins,
      this.carbohydrate,
      this.fat,
      this.sugar,
      final List<int>? drinks})
      : _drinks = drinks;
  factory _Drink.fromJson(Map<String, dynamic> json) => _$DrinkFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? category;
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
  final List<int>? _drinks;
  @override
  List<int>? get drinks {
    final value = _drinks;
    if (value == null) return null;
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DrinkCopyWith<_Drink> get copyWith =>
      __$DrinkCopyWithImpl<_Drink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DrinkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Drink &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      category,
      calories,
      proteins,
      carbohydrate,
      fat,
      sugar,
      const DeepCollectionEquality().hash(_drinks));

  @override
  String toString() {
    return 'Drink(id: $id, name: $name, category: $category, calories: $calories, proteins: $proteins, carbohydrate: $carbohydrate, fat: $fat, sugar: $sugar, drinks: $drinks)';
  }
}

/// @nodoc
abstract mixin class _$DrinkCopyWith<$Res> implements $DrinkCopyWith<$Res> {
  factory _$DrinkCopyWith(_Drink value, $Res Function(_Drink) _then) =
      __$DrinkCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? category,
      String? calories,
      String? proteins,
      String? carbohydrate,
      String? fat,
      String? sugar,
      List<int>? drinks});
}

/// @nodoc
class __$DrinkCopyWithImpl<$Res> implements _$DrinkCopyWith<$Res> {
  __$DrinkCopyWithImpl(this._self, this._then);

  final _Drink _self;
  final $Res Function(_Drink) _then;

  /// Create a copy of Drink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? calories = freezed,
    Object? proteins = freezed,
    Object? carbohydrate = freezed,
    Object? fat = freezed,
    Object? sugar = freezed,
    Object? drinks = freezed,
  }) {
    return _then(_Drink(
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
      drinks: freezed == drinks
          ? _self._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

// dart format on
