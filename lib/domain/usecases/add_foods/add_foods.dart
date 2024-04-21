import 'package:hepa/data/repositories/food_repository.dart';
import 'package:hepa/domain/entities/food.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

part 'add_foods_params.dart';

class AddFoods implements UseCase<Result<Food>, AddFoodsParams> {
  final FoodRepository foodRepository;

  AddFoods({required this.foodRepository});

  @override
  Future<Result<Food>> call(AddFoodsParams params) async {
    var snacksList = await foodRepository.addFood(
        foods: params.foods, category: params.category);

    return snacksList;
  }
}
