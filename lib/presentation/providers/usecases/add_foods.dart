import 'package:hepa/domain/usecases/add_foods/add_foods.dart';
import 'package:hepa/presentation/providers/repositories/food_repository/food_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_foods.g.dart';

@riverpod
AddFoods addFoods(AddFoodsRef ref) =>
    AddFoods(foodRepository: ref.watch(foodRepositoryProvider));
