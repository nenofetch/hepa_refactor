import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/education.dart';

import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/add_education_history/add_education_history.dart';
import 'package:hepa/domain/usecases/get_education/get_education.dart';
import 'package:hepa/presentation/providers/usecases/add_education_history.dart';
import 'package:hepa/presentation/providers/usecases/get_education_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'education_provider.g.dart';

@riverpod
class Educations extends _$Educations {
  @override
  FutureOr<List<Education>> build() async {
    GetEducation getEducation = ref.read(getEducationProvider);

    var result = await getEducation(null);
    return switch (result) {
      Success(value: final educations) => educations,
      Failed(message: _) => const []
    };
  }

  Future<List<Education>> getEducations() async {
    GetEducation getEducation = ref.read(getEducationProvider);

    var result = await getEducation(null);
    return switch (result) {
      Success(value: final educations) => educations,
      Failed(message: _) => const []
    };
  }

  Future<void> addEducationActivity({
    required String educationName,
    required String tglInput,
  }) async {
    AddEducationHistory addEducationHistory =
        await ref.read(addEducationHistoryProvider);
    var result = addEducationHistory(AddEducationHistoryParams(
        educationName: educationName, tglInput: tglInput));
    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);

      case Failed(message: final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData([]);
    }
  }
}
