import 'package:dio/dio.dart';
import 'package:hepa/data/repositories/tdee_repository.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/domain/entities/tdee.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaTdee implements TdeeRepository {
  final Dio? _dio;
  HepaTdee({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));

  @override
  Future<Result<Tdee>> checkTdee(
      {required double weight,
      required double height,
      required String activity}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      final responses = await _dio!.get(ApiUrl.tdee,
          queryParameters: {
            'weight': weight,
            'height': height,
            'activity': activity,
          },
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (responses.statusCode == 200) {
        final data = responses.data['data'];
        return Result.success(Tdee.fromJson(data));
      } else {
        return Result.failed('Failed to check TDEE');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
