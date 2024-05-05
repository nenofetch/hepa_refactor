// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Drink _$DrinkFromJson(Map<String, dynamic> json) {
  return _Drink.fromJson(json);
}

/// @nodoc
mixin _$Drink {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get calories => throw _privateConstructorUsedError;
  String? get proteins => throw _privateConstructorUsedError;
  String? get carbohydrate => throw _privateConstructorUsedError;
  String? get fat => throw _privateConstructorUsedError;
  String? get sugar => throw _privateConstructorUsedError;
  List<int>? get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrinkCopyWith<Drink> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrinkCopyWith<$Res> {
  factory $DrinkCopyWith(Drink value, $Res Function(Drink) then) =
      _$DrinkCopyWithImpl<$Res, Drink>;
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
class _$DrinkCopyWithImpl<$Res, $Val extends Drink>
    implements $DrinkCopyWith<$Res> {
  _$DrinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String?,
      proteins: freezed == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as String?,
      carbohydrate: freezed == carbohydrate
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String?,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String?,
      sugar: freezed == sugar
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as String?,
      drinks: freezed == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrinkImplCopyWith<$Res> implements $DrinkCopyWith<$Res> {
  factory _$$DrinkImplCopyWith(
          _$DrinkImpl value, $Res Function(_$DrinkImpl) then) =
      __$$DrinkImplCopyWithImpl<$Res>;
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
class __$$DrinkImplCopyWithImpl<$Res>
    extends _$DrinkCopyWithImpl<$Res, _$DrinkImpl>
    implements _$$DrinkImplCopyWith<$Res> {
  __$$DrinkImplCopyWithImpl(
      _$DrinkImpl _value, $Res Function(_$DrinkImpl) _then)
      : super(_value, _then);

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
    return _then(_$DrinkImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as String?,
      proteins: freezed == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as String?,
      carbohydrate: freezed == carbohydrate
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String?,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String?,
      sugar: freezed == sugar
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as String?,
      drinks: freezed == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DrinkImpl implements _Drink {
  const _$DrinkImpl(
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

  factory _$DrinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$DrinkImplFromJson(json);

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

  @override
  String toString() {
    return 'Drink(id: $id, name: $name, category: $category, calories: $calories, proteins: $proteins, carbohydrate: $carbohydrate, fat: $fat, sugar: $sugar, drinks: $drinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrinkImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrinkImplCopyWith<_$DrinkImpl> get copyWith =>
      __$$DrinkImplCopyWithImpl<_$DrinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DrinkImplToJson(
      this,
    );
  }
}

abstract class _Drink implements Drink {
  const factory _Drink(
      {final int? id,
      final String? name,
      final String? category,
      final String? calories,
      final String? proteins,
      final String? carbohydrate,
      final String? fat,
      final String? sugar,
      final List<int>? drinks}) = _$DrinkImpl;

  factory _Drink.fromJson(Map<String, dynamic> json) = _$DrinkImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get category;
  @override
  String? get calories;
  @override
  String? get proteins;
  @override
  String? get carbohydrate;
  @override
  String? get fat;
  @override
  String? get sugar;
  @override
  List<int>? get drinks;
  @override
  @JsonKey(ignore: true)
  _$$DrinkImplCopyWith<_$DrinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
