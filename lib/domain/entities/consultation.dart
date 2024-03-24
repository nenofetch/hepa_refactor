// ignore_for_file: invalid_annotation_target

import 'package:hepa/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation.freezed.dart';
part 'consultation.g.dart';

@freezed
class Consultation with _$Consultation {
  const factory Consultation({
    @JsonKey(name: 'receipent_id') List<User>? receipentId,
    String? message,
    String? attachment,
    @JsonKey(name: 'sender_id') int? senderId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Consultation;

  factory Consultation.fromJson(Map<String, dynamic> json) =>
      _$ConsultationFromJson(json);
}
