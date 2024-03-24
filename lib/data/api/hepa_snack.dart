import 'package:dio/dio.dart';
import 'package:hepa/data/misc/constants.dart';
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
  Future<Result<Snack>> addFood({
    required List<int> id,
    String category = "Cemilan",
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Snack>>> getFoods() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(
        '$baseUrl/snacks',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      final results = List<Map<String, dynamic>>.from(responses.data['data']);

      return Result.success(results.map((e) => Snack.fromJson(e)).toList());
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
