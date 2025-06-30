import 'package:hepa/data/repositories/education_repository.dart';
import 'package:hepa/domain/entities/education_history.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

part 'add_education_history_params.dart';

class AddEducationHistory
    implements UseCase<Result<EducationHistory>, AddEducationHistoryParams> {
  final EducationRepository educationRepository;

  AddEducationHistory({required this.educationRepository});

  @override
  Future<Result<EducationHistory>> call(
      AddEducationHistoryParams params) async {
    final result = await educationRepository.addEducationActivity(
        educationName: params.educationName, tglInput: params.tglInput);

    return result;
  }
}
