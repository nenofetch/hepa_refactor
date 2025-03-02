// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Drink _$DrinkFromJson(Map<String, dynamic> json) => _Drink(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      category: json['category'] as String?,
      calories: json['calories'] as String?,
      proteins: json['proteins'] as String?,
      carbohydrate: json['carbohydrate'] as String?,
      fat: json['fat'] as String?,
      sugar: json['sugar'] as String?,
      drinks: (json['drinks'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$DrinkToJson(_Drink instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'calories': instance.calories,
      'proteins': instance.proteins,
      'carbohydrate': instance.carbohydrate,
      'fat': instance.fat,
      'sugar': instance.sugar,
      'drinks': instance.drinks,
    };
