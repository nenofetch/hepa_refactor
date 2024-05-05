import 'package:hepa/data/repositories/report_repository.dart';

import 'package:hepa/domain/entities/report.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class GetReport implements UseCase<Result<Report>, void> {
  final ReportRepository reportRepository;

  GetReport({required this.reportRepository});
  @override
  Future<Result<Report>> call(void _) async {
    var reports = await reportRepository.getReports();

    return reports;
  }
}
