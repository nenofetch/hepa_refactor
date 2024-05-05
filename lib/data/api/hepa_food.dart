import 'package:dio/dio.dart';
import 'package:hepa/data/utils/api_url.dart';
import 'package:hepa/data/repositories/food_repository.dart';
import 'package:hepa/domain/entities/food.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HepaFood implements FoodRepository {
  final Dio? _dio;

  HepaFood({Dio? dio})
      : _dio = dio ?? Dio()
          ..interceptors.add(PrettyDioLogger(
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ));

  @override
  Future<Result<Food>> addFood(
      {required List<int> foods, required String category}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      final responses = await _dio!.post(
        ApiUrl.foods,
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
        data: {
          'category': category,
          'foods': foods,
        },
      );
      if (responses.statusCode == 200) {
        return Result.success(Food.fromJson(responses.data));
      } else {
        return Result.failed('Failed to add food');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }

  @override
  Future<Result<List<Food>>> getFoods() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final responses = await _dio!.get(
        ApiUrl.foods,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (responses.statusCode == 200) {
        final results =
            List<Map<String, dynamic>>.from(responses.data['data']['foods']);

        return Result.success(results.map((e) => Food.fromJson(e)).toList());
        // final foodList = responses.data['data']['foods'] as List;
        // final results = foodList.map((e) => Food.fromJson(e)).toList();
        // return Result.success(results);
      } else {
        return Result.failed('Failed');
      }
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
