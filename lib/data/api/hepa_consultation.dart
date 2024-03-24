import 'package:dio/dio.dart';
import 'package:hepa/data/repositories/consultation_repository.dart';
import 'package:hepa/domain/entities/consultation.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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
  Future<Result<List<Consultation>>> getConsultations() {
    // TODO: implement getConsultations
    throw UnimplementedError();
  }

  @override
  Future<Result<String>> sendConsultation({required int receipentId}) async{
    try {
      final responses = await _dio!.post(
        'https://hepa-api.herokuapp.com/consultations',
        data: {
          'receipent_id': receipentId,
        },
      );

      if (responses.statusCode == 200) {
        return Result.success('Success');
      } else {
        return Result.failed('Failed');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
