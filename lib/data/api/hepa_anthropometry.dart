import 'package:dio/dio.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/anthropometry_repository.dart';
import 'package:hepa/domain/entities/anthropometry.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaAnthropometry implements AnthropometryRepository {
  final Dio? _dio;

  HepaAnthropometry({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));

  @override
  Future<Result<Anthropometry>> checkAnthropometry(
      {required double weight, required double height}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      final responses = await _dio!.get(
        ApiUrl.imt,
        queryParameters: {'weight': weight, 'height': height},
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );

      if (responses.statusCode == 200) {
        final data = responses.data['data'];
        return Result.success(Anthropometry.fromJson(data));
      } else {
        return Result.failed('Failed to check anthropometry');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }

  @override
  Future<Result<Anthropometry>> getAnthropometry() async {
    // try {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   final token = prefs.getString('token');
    //   final responses = await _dio!.get('$baseUrl/educations',
    //       options: Options(headers: {
    //         'Authorization': 'Bearer $token',
    //       }));

    //   final results = responses.data['data'];

    //   return Result.success(results);
    // } on DioException catch (e) {
    //   return Result.failed('${e.message}');
    // }
    throw UnimplementedError();
  }
}
