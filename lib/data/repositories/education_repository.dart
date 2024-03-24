import 'package:hepa/domain/entities/education.dart';
import 'package:hepa/domain/entities/result.dart';

abstract interface class EducationRepository {
  // Get all educations
  Future<Result<List<Education>>> getEducations();
}
