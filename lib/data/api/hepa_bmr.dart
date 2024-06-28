import 'package:dio/dio.dart';
import 'package:hepa/data/repositories/bmr_repository.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/bmr.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaBmr implements BmrRepository {
  final Dio? _dio;

  HepaBmr({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));

  @override
  Future<Result<BMR>> checkBMR(
      {required double weight, required double height}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      final responses = await _dio!.get(ApiUrl.bmr,
          queryParameters: {'weight': weight, 'height': height},
          options: Options(
            headers: {'Authorization': 'Bearer $token'},
          ));

      if (responses.statusCode == 200) {
        final data = responses.data['data'];
        return Result.success(BMR.fromJson(data));
      } else {
        return Result.failed('Failed to check BMR');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
