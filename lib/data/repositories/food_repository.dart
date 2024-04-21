import 'package:hepa/domain/entities/food.dart';
import 'package:hepa/domain/entities/result.dart';

abstract interface class FoodRepository {
  // Get all foods
  Future<Result<List<Food>>> getFoods();

  // Add food
  Future<Result<Food>> addFood({
    required List<int> foods,
    required String category,
  });
}
