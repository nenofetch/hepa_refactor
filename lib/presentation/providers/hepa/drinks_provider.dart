import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/drink.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/add_drinks/add_drinks.dart';
import 'package:hepa/domain/usecases/get_drinks/get_drink_list.dart';
import 'package:hepa/presentation/providers/usecases/add_drinks.dart';
import 'package:hepa/presentation/providers/usecases/get_drink_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drinks_provider.g.dart';

@riverpod
class Drinks extends _$Drinks {
  @override
  FutureOr<List<Drink>> build() async {
    GetDrinkList getDrinkList = ref.read(getDrinkListProvider);
    var result = await getDrinkList(null);
    switch (result) {
      case Success(value: final drinks):
        return drinks;

      case Failed(message: _):
        return [];
    }
  }

  Future<void> addFood({required List<int> drinks}) async {
    AddDrinks addDrinks = await ref.read(addDrinksProvider);
    var result = addDrinks(AddDrinksParams(drinks: drinks));
    switch (result) {
      case Success(value: final user):
        state = AsyncData(user);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData([]);
    }
  }
}
