import 'package:hepa/domain/usecases/get_foods/get_food_list.dart';
import 'package:hepa/presentation/providers/repositories/food_repository/food_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_food_list.g.dart';

@riverpod
GetFoodList getFoodList(GetFoodListRef ref) =>
    GetFoodList(foodRepository: ref.watch(foodRepositoryProvider));
