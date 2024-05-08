// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation.freezed.dart';
part 'consultation.g.dart';

@freezed
class Consultation with _$Consultation {
  const factory Consultation({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "sender_id") required int senderId,
    @JsonKey(name: "recipient_id") required int recipientId,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "attachment") required dynamic attachment,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
  }) = _Consultation;

  factory Consultation.fromJson(Map<String, dynamic> json) =>
      _$ConsultationFromJson(json);
}
