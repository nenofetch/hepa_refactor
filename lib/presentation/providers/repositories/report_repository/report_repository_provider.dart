import 'package:hepa/data/api/hepa_report.dart';
import 'package:hepa/data/repositories/report_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'report_repository_provider.g.dart';

@riverpod
ReportRepository reportRepository(ReportRepositoryRef ref) => HepaReport();
