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
      return Result.failed('${e.message}');
    }
  }

  @override
  Future<Result<String>> postSportActivity({
    required String duration,
    required String name,
    required String tglInput,
  }) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.post(ApiUrl.sports,
          options: Options(
            headers: {'Authorization': 'Bearer $token'},
          ),
          data: {
            'duration': duration,
            'name': name,
            'category': 'Olahraga',
            'tgl_input': tglInput,
          });

      if (responses.statusCode == 200) {
        final responseData = responses.data['data'];
        String message;
        if (responseData is Map<String, dynamic>) {
          message = responseData['message'] ?? responseData.toString();
        } else if (responseData is String) {
          message = responseData;
        } else {
          message = responseData.toString();
        }
        return Result.success(message);
      } else {
        final errorData = responses.data['data'];
        String errorMessage;
        if (errorData is Map<String, dynamic>) {
          errorMessage = errorData['message'] ?? errorData.toString();
        } else if (errorData is String) {
          errorMessage = errorData;
        } else {
          errorMessage = errorData.toString();
        }
        return Result.failed(errorMessage);
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
