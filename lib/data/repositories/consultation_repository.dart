import 'package:hepa/domain/entities/consultation.dart';
import 'package:hepa/domain/entities/result.dart';

abstract interface class ConsultationRepository {
  Future<Result<List<Consultation>>> getConsultations();
  Future<Result<Consultation>> sendConsultation(
      {required int recipientId, required String message});
}
