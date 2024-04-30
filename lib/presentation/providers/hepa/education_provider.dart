import 'package:hepa/domain/entities/education.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/get_education/get_education.dart';
import 'package:hepa/presentation/providers/usecases/get_education_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'education_provider.g.dart';

@riverpod
Future<List<Education>> getEducations(GetEducationsRef ref) async {
  GetEducation getEducation = ref.read(getEducationProvider);

  var result = await getEducation(null);
  return switch (result) {
    Success(value: final educations) => educations,
    Failed(message: _) => const []
  };
}
