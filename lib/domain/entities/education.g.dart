// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Education _$EducationFromJson(Map<String, dynamic> json) => _Education(
      id: (json['id'] as num).toInt(),
      thumbnail: json['thumbnail'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$EducationToJson(_Education instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'description': instance.description,
      'link': instance.link,
    };
