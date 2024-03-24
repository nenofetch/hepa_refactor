// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return _Nutrition.fromJson(json);
}

/// @nodoc
mixin _$Nutrition {
  @JsonKey(name: 'calories')
  List<Nutrient> get calories => throw _privateConstructorUsedError;
  @JsonKey(name: 'carbohydrates')
  List<Nutrient> get carbohydrates => throw _privateConstructorUsedError;
  @JsonKey(name: 'protein')
  List<Nutrient> get protein => throw _privateConstructorUsedError;
  @JsonKey(name: 'fat')
  List<Nutrient> get fat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res, Nutrition>;
  @useResult
  $Res call(
      {@JsonKey(name: 'calories') List<Nutrient> calories,
      @JsonKey(name: 'carbohydrates') List<Nutrient> carbohydrates,
      @JsonKey(name: 'protein') List<Nutrient> protein,
      @JsonKey(name: 'fat') List<Nutrient> fat});
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res, $Val extends Nutrition>
    implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? carbohydrates = null,
    Object? protein = null,
    Object? fat = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutritionImplCopyWith<$Res>
    implements $NutritionCopyWith<$Res> {
  factory _$$NutritionImplCopyWith(
          _$NutritionImpl value, $Res Function(_$NutritionImpl) then) =
      __$$NutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'calories') List<Nutrient> calories,
      @JsonKey(name: 'carbohydrates') List<Nutrient> carbohydrates,
      @JsonKey(name: 'protein') List<Nutrient> protein,
      @JsonKey(name: 'fat') List<Nutrient> fat});
}

/// @nodoc
class __$$NutritionImplCopyWithImpl<$Res>
    extends _$NutritionCopyWithImpl<$Res, _$NutritionImpl>
    implements _$$NutritionImplCopyWith<$Res> {
  __$$NutritionImplCopyWithImpl(
      _$NutritionImpl _value, $Res Function(_$NutritionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? carbohydrates = null,
    Object? protein = null,
    Object? fat = null,
  }) {
    return _then(_$NutritionImpl(
      calories: null == calories
          ? _value._calories
          : calories // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
      carbohydrates: null == carbohydrates
          ? _value._carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
      protein: null == protein
          ? _value._protein
          : protein // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
      fat: null == fat
          ? _value._fat
          : fat // ignore: cast_nullable_to_non_nullable
              as List<Nutrient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NutritionImpl implements _Nutrition {
  const _$NutritionImpl(
      {@JsonKey(name: 'calories') required final List<Nutrient> calories,
      @JsonKey(name: 'carbohydrates')
      required final List<Nutrient> carbohydrates,
      @JsonKey(name: 'protein') required final List<Nutrient> protein,
      @JsonKey(name: 'fat') required final List<Nutrient> fat})
      : _calories = calories,
        _carbohydrates = carbohydrates,
        _protein = protein,
        _fat = fat;

  factory _$NutritionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutritionImplFromJson(json);

  final List<Nutrient> _calories;
  @override
  @JsonKey(name: 'calories')
  List<Nutrient> get calories {
    if (_calories is EqualUnmodifiableListView) return _calories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calories);
  }

  final List<Nutrient> _carbohydrates;
  @override
  @JsonKey(name: 'carbohydrates')
  List<Nutrient> get carbohydrates {
    if (_carbohydrates is EqualUnmodifiableListView) return _carbohydrates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carbohydrates);
  }

  final List<Nutrient> _protein;
  @override
  @JsonKey(name: 'protein')
  List<Nutrient> get protein {
    if (_protein is EqualUnmodifiableListView) return _protein;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_protein);
  }

  final List<Nutrient> _fat;
  @override
  @JsonKey(name: 'fat')
  List<Nutrient> get fat {
    if (_fat is EqualUnmodifiableListView) return _fat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fat);
  }

  @override
  String toString() {
    return 'Nutrition(calories: $calories, carbohydrates: $carbohydrates, protein: $protein, fat: $fat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutritionImpl &&
            const DeepCollectionEquality().equals(other._calories, _calories) &&
            const DeepCollectionEquality()
                .equals(other._carbohydrates, _carbohydrates) &&
            const DeepCollectionEquality().equals(other._protein, _protein) &&
            const DeepCollectionEquality().equals(other._fat, _fat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_calories),
      const DeepCollectionEquality().hash(_carbohydrates),
      const DeepCollectionEquality().hash(_protein),
      const DeepCollectionEquality().hash(_fat));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NutritionImplCopyWith<_$NutritionImpl> get copyWith =>
      __$$NutritionImplCopyWithImpl<_$NutritionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutritionImplToJson(
      this,
    );
  }
}

abstract class _Nutrition implements Nutrition {
  const factory _Nutrition(
          {@JsonKey(name: 'calories') required final List<Nutrient> calories,
          @JsonKey(name: 'carbohydrates')
          required final List<Nutrient> carbohydrates,
          @JsonKey(name: 'protein') required final List<Nutrient> protein,
          @JsonKey(name: 'fat') required final List<Nutrient> fat}) =
      _$NutritionImpl;

  factory _Nutrition.fromJson(Map<String, dynamic> json) =
      _$NutritionImpl.fromJson;

  @override
  @JsonKey(name: 'calories')
  List<Nutrient> get calories;
  @override
  @JsonKey(name: 'carbohydrates')
  List<Nutrient> get carbohydrates;
  @override
  @JsonKey(name: 'protein')
  List<Nutrient> get protein;
  @override
  @JsonKey(name: 'fat')
  List<Nutrient> get fat;
  @override
  @JsonKey(ignore: true)
  _$$NutritionImplCopyWith<_$NutritionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
