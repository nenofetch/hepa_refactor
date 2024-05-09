import 'package:hepa/domain/entities/report.dart';
import 'package:hepa/domain/entities/result.dart';

import 'package:hepa/domain/usecases/get_report/get_report.dart';

import 'package:hepa/presentation/providers/usecases/get_report.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reports_provider.g.dart';

@riverpod
class Reports extends _$Reports {
  @override
  FutureOr<Report?> build() async {
    GetReport getReport = ref.read(getReportProvider);

    var result = await getReport(null);

    switch (result) {
      case Success(value: final reports):
        return reports;
      case Failed(message: _):
        return null;
    }
  }
}
