import 'package:hepa/data/repositories/consultation_repository.dart';
import 'package:hepa/domain/entities/consultation.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

part 'add_consultation_params.dart';

class AddConsultation
    implements UseCase<Result<Consultation>, AddConsultationParams> {
  final ConsultationRepository consultationRepository;

  AddConsultation({required this.consultationRepository});

  @override
  Future<Result<Consultation>> call(AddConsultationParams params) async {
    var consultation = await consultationRepository.sendConsultation(
        recipientId: params.recipientId, message: params.message);

    return consultation;
  }
}
