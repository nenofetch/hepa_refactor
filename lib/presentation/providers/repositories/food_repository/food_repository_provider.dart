import 'package:hepa/data/api/hepa_food.dart';
import 'package:hepa/data/repositories/food_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_repository_provider.g.dart';

@riverpod
FoodRepository foodRepository(FoodRepositoryRef ref) => HepaFood();
