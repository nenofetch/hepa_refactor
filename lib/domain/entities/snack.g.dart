// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnackImpl _$$SnackImplFromJson(Map<String, dynamic> json) => _$SnackImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      category: json['category'] as String?,
      portion: json['portion'] as String?,
      calories: json['calories'] as String?,
      proteins: json['proteins'] as String?,
      carbohydrate: json['carbohydrate'] as String?,
      fat: json['fat'] as String?,
      sugar: json['sugar'] as String?,
      snacks: (json['snacks'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$SnackImplToJson(_$SnackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'portion': instance.portion,
      'calories': instance.calories,
      'proteins': instance.proteins,
      'carbohydrate': instance.carbohydrate,
      'fat': instance.fat,
      'sugar': instance.sugar,
      'snacks': instance.snacks,
    };
