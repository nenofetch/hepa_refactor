import 'dart:core';
import 'package:dio/dio.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/consultation_repository.dart';
import 'package:hepa/domain/entities/consultation.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaConsultation implements ConsultationRepository {
  final Dio? _dio;

  HepaConsultation({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));

  @override
  Future<Result<List<Consultation>>> getConsultations() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(
        ApiUrl.consultations,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      if (responses.data['meta']['code'] == 200) {
        final results =
            List<Map<String, dynamic>>.from(responses.data['data']['1']);

        // Sort the results in ascending order based on a specific key
        results.sort((a, b) => a['id'].compareTo(b['id']));

        return Result.success(
            results.map((e) => Consultation.fromJson(e)).toList());
      } else {
        return Result.failed('Failed to get consultation');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }

  @override
  Future<Result<Consultation>> sendConsultation(
      {required int recipientId, required String message}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.post(ApiUrl.consultations,
          data: {
            'recipient_id': recipientId,
            'message': message,
          },
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      if (responses.data['meta']['code'] == 200) {
        final data = responses.data['data'];
        return Result.success(Consultation.fromJson(data));
      } else {
        return Result.failed('Failed');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
