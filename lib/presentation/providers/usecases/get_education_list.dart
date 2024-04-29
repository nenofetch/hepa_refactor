import 'package:hepa/domain/usecases/get_education/get_education.dart';
import 'package:hepa/presentation/providers/repositories/education_repository/education_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_education_list.g.dart';

@riverpod
GetEducation getEducation(GetEducationRef ref) =>
    GetEducation(educationRepository: ref.watch(educationRepositoryProvider));
