import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/add_foods/add_foods.dart';

import 'package:hepa/presentation/providers/usecases/add_foods.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'food_detail.g.dart';

@riverpod
class FoodDetail extends _$FoodDetail {
  @override
  dynamic build() {
    // TODO: implement build
    throw UnimplementedError();
  }

  Future<void> addFood({required List<int> foods, required String category}) async {
    AddFoods addFoods = await ref.read(addFoodsProvider);
    var result = addFoods(AddFoodsParams(category: category, foods: foods));
    switch (result) {
      case Success(value: final user):
        state = AsyncData(user);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData(null);
    }
  }






}