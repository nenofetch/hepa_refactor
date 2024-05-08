import 'package:hepa/domain/usecases/add_consultation/add_consultation.dart';
import 'package:hepa/presentation/providers/repositories/consultation_repository/consultation_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_consultation.g.dart';

@riverpod
AddConsultation addConsultation(AddConsultationRef ref) => AddConsultation(consultationRepository: ref.watch(consultationRepositoryProvider));