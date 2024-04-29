import 'package:hepa/domain/usecases/get_report/get_report.dart';
import 'package:hepa/presentation/providers/repositories/report_repository/report_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_report.g.dart';

@riverpod
GetReport getReport(GetReportRef ref) =>
    GetReport(reportRepository: ref.watch(reportRepositoryProvider));
