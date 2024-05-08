import 'package:hepa/domain/usecases/get_consultations/get_consultation.dart';
import 'package:hepa/presentation/providers/repositories/consultation_repository/consultation_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_consultation.g.dart';

@riverpod
GetConsultations getConsultations(GetConsultationsRef ref) => GetConsultations(
    consultationRepository: ref.watch(consultationRepositoryProvider));
