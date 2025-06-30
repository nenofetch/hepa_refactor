import 'package:hepa/domain/usecases/add_education_history/add_education_history.dart';

import 'package:hepa/presentation/providers/repositories/education_repository/education_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_education_history.g.dart';

@riverpod
AddEducationHistory addEducationHistory(Ref ref) => AddEducationHistory(
    educationRepository: ref.watch(educationRepositoryProvider));
