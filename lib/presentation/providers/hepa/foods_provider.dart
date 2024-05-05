import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/food.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/add_foods/add_foods.dart';
import 'package:hepa/domain/usecases/get_foods/get_food_list.dart';

import 'package:hepa/presentation/providers/usecases/add_foods.dart';
import 'package:hepa/presentation/providers/usecases/get_food_list.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foods_provider.g.dart';

@riverpod
class Foods extends _$Foods {
  @override
  FutureOr<List<Food>> build() async {
    GetFoodList getFoodList = ref.read(getFoodListProvider);

    var result = await getFoodList(null);
    switch (result) {
      case Success(value: final foods):
        return foods;
      case Failed(message: _):
        return [];
    }
  }

  Future<void> addFood(
      {required List<int> foods, required String category}) async {
    AddFoods addFoods = await ref.read(addFoodsProvider);
    var result = addFoods(AddFoodsParams(category: category, foods: foods));
    switch (result) {
      case Success(value: final user):
        state = AsyncData(user);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData([]);
    }
  }
}
