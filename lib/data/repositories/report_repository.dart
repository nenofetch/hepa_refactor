import 'package:hepa/domain/entities/nutrition.dart';

import 'package:hepa/domain/entities/result.dart';

abstract interface class ReportRepository {
  // Get all reports
  Future<Result<Nutrition>> getReports();

  // Add report
  Future<Result<Nutrition>> detailReport();
}
