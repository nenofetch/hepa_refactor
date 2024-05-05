import 'package:dio/dio.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/sport_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/sport.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaSport implements SportRepository {
  final Dio? _dio;

  HepaSport({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));
  @override
  Future<Result<List<Sport>>> getSports() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(ApiUrl.sports,
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      final results =
          List<Map<String, dynamic>>.from(responses.data['data']['sports']);

      return Result.success(results.map((e) => Sport.fromJson(e)).toList());
    } on DioException catch (e) {
      return Result.failed(' ${e.message}');
    }
  }
}
