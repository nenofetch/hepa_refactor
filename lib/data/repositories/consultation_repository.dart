import 'package:hepa/domain/entities/consultation.dart';
import 'package:hepa/domain/entities/result.dart';

abstract interface class ConsultationRepository {
  Future<Result<List<Consultation>>> getConsultations();
  Future<Result<String>> sendConsultation(
      {required int receipentId, required String message});
}
