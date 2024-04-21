import 'package:hepa/data/repositories/food_repository.dart';
import 'package:hepa/domain/entities/food.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class GetFoodList implements UseCase<Result<List<Food>>, void> {
  final FoodRepository _foodRepository;

  GetFoodList({required FoodRepository foodRepository})
      : _foodRepository = foodRepository;

  @override
  Future<Result<List<Food>>> call(void params) async {
    var foodList = await _foodRepository.getFoods();

    return switch (foodList) {
      Success(value: final food) => Result.success(food),
      Failed(:final message) => Result.failed(message),
    };
  }
}
