import 'package:hepa/data/repositories/consultation_repository.dart';
import 'package:hepa/domain/entities/consultation.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class GetConsultations implements UseCase<Result<List<Consultation>>, void> {
  final ConsultationRepository _consultationRepository;

  GetConsultations({required ConsultationRepository consultationRepository})
      : _consultationRepository = consultationRepository;

  @override
  Future<Result<List<Consultation>>> call(void _) async {
    var consultations = await _consultationRepository.getConsultations();

    return switch (consultations) {
      Success(value: final consultation) => Result.success(consultation),
      Failed(:final message) => Result.failed(message),
    };
  }
}
