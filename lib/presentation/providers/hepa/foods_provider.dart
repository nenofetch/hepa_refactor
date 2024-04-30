import 'package:hepa/domain/entities/food.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/get_foods/get_food_list.dart';
import 'package:hepa/presentation/providers/usecases/get_food_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foods_provider.g.dart';

@riverpod
Future<List<Food>> getFoods(GetFoodsRef ref) async {
  GetFoodList getFoodList = ref.read(getFoodListProvider);

  var result = await getFoodList(null);
  return switch (result) {
    Success(value: final foods) => foods,
    Failed(message: _) => const []
  };
}
