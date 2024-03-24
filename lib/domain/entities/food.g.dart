// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodImpl _$$FoodImplFromJson(Map<String, dynamic> json) => _$FoodImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      category: json['category'] as String?,
      portion: json['portion'] as String?,
      calories: json['calories'] as String?,
      proteins: json['proteins'] as String?,
      carbohydrate: json['carbohydrate'] as String?,
      fat: json['fat'] as String?,
      fiber: json['fiber'] as String?,
      sugar: json['sugar'] as String?,
      foods: (json['foods'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$FoodImplToJson(_$FoodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'portion': instance.portion,
      'calories': instance.calories,
      'proteins': instance.proteins,
      'carbohydrate': instance.carbohydrate,
      'fat': instance.fat,
      'fiber': instance.fiber,
      'sugar': instance.sugar,
      'foods': instance.foods,
    };
