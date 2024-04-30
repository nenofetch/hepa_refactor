import 'package:hepa/domain/usecases/detail_report/detail_report.dart';
import 'package:hepa/presentation/providers/repositories/report_repository/report_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_report.g.dart';

@riverpod
DetailReport detailReport(DetailReportRef ref) =>
    DetailReport(reportRepository: ref.watch(reportRepositoryProvider));
