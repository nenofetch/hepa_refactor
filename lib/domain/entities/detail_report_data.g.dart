// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_report_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetailReport _$DetailReportFromJson(Map<String, dynamic> json) =>
    _DetailReport(
      breakfast: (json['breakfast'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      lunch: (json['lunch'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      dinner: (json['dinner'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      snack: (json['snack'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      drink: (json['drink'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      sports: (json['sports'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      bmr: (json['bmr'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      bmi: (json['bmi'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailReportToJson(_DetailReport instance) =>
    <String, dynamic>{
      'breakfast': instance.breakfast,
      'lunch': instance.lunch,
      'dinner': instance.dinner,
      'snack': instance.snack,
      'drink': instance.drink,
      'sports': instance.sports,
      'bmr': instance.bmr,
      'bmi': instance.bmi,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      category: json['category'] as String,
      name: json['name'] as String,
      calories: json['calories'] as String,
      carbohydrates: json['carbohydrates'] as String,
      protein: json['protein'] as String,
      fat: json['fat'] as String,
      duration: json['duration'] as String?,
      resultBmi: json['result_bmi'] as String?,
      resultBmr: json['result_bmr'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      imt: (json['imt'] as num?)?.toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'category': instance.category,
      'name': instance.name,
      'calories': instance.calories,
      'carbohydrates': instance.carbohydrates,
      'protein': instance.protein,
      'fat': instance.fat,
      'duration': instance.duration,
      'result_bmi': instance.resultBmi,
      'result_bmr': instance.resultBmr,
      'weight': instance.weight,
      'height': instance.height,
      'imt': instance.imt,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
