// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationImpl _$$ConsultationImplFromJson(Map<String, dynamic> json) =>
    _$ConsultationImpl(
      receipentId: (json['receipent_id'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      attachment: json['attachment'] as String?,
      senderId: json['sender_id'] as int?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ConsultationImplToJson(_$ConsultationImpl instance) =>
    <String, dynamic>{
      'receipent_id': instance.receipentId,
      'message': instance.message,
      'attachment': instance.attachment,
      'sender_id': instance.senderId,
      'created_at': instance.createdAt.toIso8601String(),
    };
