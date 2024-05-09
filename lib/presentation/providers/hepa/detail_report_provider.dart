
import 'package:hepa/domain/entities/detail_report_data.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/detail_report/detail_report.dart';
import 'package:hepa/presentation/providers/usecases/detail_report.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_report_provider.g.dart';

@riverpod
Future<DetailReportData?> detailReports(DetailReportsRef ref) async {
  DetailReport detailReport = ref.read(detailReportProvider);

  var result = await detailReport(null);

  return switch (result) {
    Success(value: final data) => data,
    Failed(message: _) => null,
  };
}
