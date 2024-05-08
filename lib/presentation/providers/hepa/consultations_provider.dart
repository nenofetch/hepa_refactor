import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/consultation.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/add_consultation/add_consultation.dart';
import 'package:hepa/domain/usecases/get_consultations/get_consultation.dart';
import 'package:hepa/presentation/providers/usecases/add_consultation.dart';
import 'package:hepa/presentation/providers/usecases/get_consultation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'consultations_provider.g.dart';

@riverpod
class Consultations extends _$Consultations {
  @override
  FutureOr<List<Consultation>> build() async {
    GetConsultations getConsultations = ref.read(getConsultationsProvider);

    var result = await getConsultations(null);
    log('Refresh data');
    switch (result) {
      case Success(value: final consultations):
        return consultations;

      case Failed(message: _):
        return [];
    }
  }

  Future<void> addConsultation({required String message}) async {
    AddConsultation addConsultation = await ref.read(addConsultationProvider);

    var result = addConsultation(
        AddConsultationParams(message: message, recipientId: 1));

    switch (result) {
      case Success(value: final consultation):
        state = AsyncData(consultation);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData([]);
    }
  }
}
