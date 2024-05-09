import 'package:hepa/domain/entities/detail_report_data.dart';
import 'package:hepa/domain/entities/report.dart';

import 'package:hepa/domain/entities/result.dart';

abstract interface class ReportRepository {
  // Get all reports
  Future<Result<Report>> getReports();

  // Add report
  Future<Result<DetailReportData>> detailReport();
}
