import 'package:hepa/data/api/hepa_consultation.dart';
import 'package:hepa/data/repositories/consultation_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'consultation_repository_provider.g.dart';

@riverpod
ConsultationRepository consultationRepository(ConsultationRepositoryRef ref) =>
    HepaConsultation();
