part of 'add_consultation.dart';

class AddConsultationParams {
  final int recipientId;
  final String message;

  AddConsultationParams({
    this.recipientId = 1,
    required this.message,
  });
}
