import 'package:dio/dio.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/snack_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/snack.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:shared_preferences/shared_preferences.dart';

class HepaSnack implements SnackRepository {
  final Dio? _dio;

  HepaSnack({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));
  @override
  Future<Result<Snack>> addSnack({
    required List<int> snacks,
    String category = "Cemilan",
  }) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      final responses = await _dio!.post(
        ApiUrl.snacks,
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
        data: {
          'category': category,
          'snacks': snacks,
        },
      );
      if (responses.statusCode == 200) {
        return Result.success(Snack.fromJson(responses.data));
      } else {
        return Result.failed('Failed to add snacks');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }

  @override
  Future<Result<List<Snack>>> getSnacks() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(
        ApiUrl.snacks,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (responses.statusCode == 200) {
        final results =
            List<Map<String, dynamic>>.from(responses.data['data']['snacks']);

        return Result.success(results.map((e) => Snack.fromJson(e)).toList());
      } else {
        return Result.failed('Failed to get snacks');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
