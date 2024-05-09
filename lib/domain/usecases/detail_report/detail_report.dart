import 'package:hepa/data/repositories/report_repository.dart';
import 'package:hepa/domain/entities/detail_report_data.dart';

import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class DetailReport implements UseCase<Result<DetailReportData>, void> {
  final ReportRepository reportRepository;

  DetailReport({required this.reportRepository});
  @override
  Future<Result<DetailReportData>> call(void _) async {
    var reports = await reportRepository.detailReport();

    return reports;
  }
}
