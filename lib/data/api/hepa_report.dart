import 'package:dio/dio.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/report_repository.dart';
import 'package:hepa/domain/entities/detail_report_data.dart';
import 'package:hepa/domain/entities/report.dart';

import 'package:hepa/domain/entities/result.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaReport implements ReportRepository {
  final Dio? _dio;

  HepaReport({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));
  @override
  Future<Result<DetailReportData>> detailReport() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(
        ApiUrl.detailReport,
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );

      return Result.success(DetailReportData.fromJson(responses.data['data']));
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }

  @override
  Future<Result<Report>> getReports() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(
        ApiUrl.report,
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );

      return Result.success(Report.fromJson(responses.data['data']));
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
