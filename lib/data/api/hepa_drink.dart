import 'package:dio/dio.dart';
import 'package:hepa/data/misc/constants.dart';
import 'package:hepa/data/repositories/drink_repository.dart';
import 'package:hepa/domain/entities/drink.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaDrink implements DrinkRepository {
  final Dio? _dio;

  HepaDrink({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));

  @override
  Future<Result<Drink>> addDrink({
    required List<int> id,
    String category = "Minuman",
  }) {
    // TODO: implement addDrink
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Drink>>> getDrinks() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(
        '$baseUrl/drinks',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      final results = List<Map<String, dynamic>>.from(responses.data['data']);

      return Result.success(results.map((e) => Drink.fromJson(e)).toList());
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
