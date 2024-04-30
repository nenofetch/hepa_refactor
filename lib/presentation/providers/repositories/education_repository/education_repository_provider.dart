import 'package:hepa/data/api/hepa_education.dart';
import 'package:hepa/data/repositories/education_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'education_repository_provider.g.dart';

@riverpod
EducationRepository educationRepository(EducationRepositoryRef ref) =>
    HepaEducation();
