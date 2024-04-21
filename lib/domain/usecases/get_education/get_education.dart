import 'package:hepa/data/repositories/education_repository.dart';
import 'package:hepa/domain/entities/education.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class GetEducation implements UseCase<Result<List<Education>>, void> {
  final EducationRepository educationRepository;

  GetEducation({required this.educationRepository});

  @override
  Future<Result<List<Education>>> call(void _) async {
    var educationList = await educationRepository.getEducations();

    return switch (educationList) {
      Success(value: final education) => Result.success(education),
      Failed(:final message) => Result.failed(message),
    };
  }
}
