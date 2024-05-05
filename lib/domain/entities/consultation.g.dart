// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationImpl _$$ConsultationImplFromJson(Map<String, dynamic> json) =>
    _$ConsultationImpl(
      message: json['message'] as String?,
      attachment: json['attachment'] as String?,
      status: json['status'] as String?,
      receipentId: (json['receipent_id'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$ConsultationImplToJson(_$ConsultationImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'attachment': instance.attachment,
      'status': instance.status,
      'receipent_id': instance.receipentId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
