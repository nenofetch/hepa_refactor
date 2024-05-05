import 'package:dio/dio.dart';
import 'package:hepa/data/utils/constants.dart';
import 'package:hepa/data/repositories/report_repository.dart';
import 'package:hepa/domain/entities/nutrition.dart';

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
  Future<Result<Nutrition>> detailReport() {
    // TODO: implement detailReport
    throw UnimplementedError();
  }

  @override
  Future<Result<Nutrition>> getReports() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(
        '$baseUrl/report',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );

      return Result.success(Nutrition.fromJson(responses.data['data']));
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}