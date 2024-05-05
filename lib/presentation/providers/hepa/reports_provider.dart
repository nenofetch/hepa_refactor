import 'package:hepa/domain/entities/nutrition.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/get_report/get_report.dart';
import 'package:hepa/presentation/providers/usecases/get_report.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'reports_provider.g.dart';

@Riverpod()
class GetReports extends _$GetReports {
  @override
  FutureOr<List<Nutrition>> build() {
    // TODO: implement build
    throw UnimplementedError();
  }

  Future<void> getReport() async {
    state = const AsyncLoading();
    GetReport getReport = ref.read(getReportProvider);

    var result = await getReport(null);

    switch (result) {
      case Success(value: final reports):
        state = AsyncData([reports]);
      case Failed(message: _):
        state = const AsyncData([]);
    }
  }
}
