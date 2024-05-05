import 'package:dio/dio.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/education_repository.dart';
import 'package:hepa/domain/entities/education.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaEducation implements EducationRepository {
  final Dio? _dio;

  HepaEducation({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));
  @override
  Future<Result<List<Education>>> getEducations() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(ApiUrl.educations,
          options: Options(headers: {
            'Authorization': 'Bearer $token',
          }));

      final results =
          List<Map<String, dynamic>>.from(responses.data['data']['educations']);

      return Result.success(results.map((e) => Education.fromJson(e)).toList());
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
