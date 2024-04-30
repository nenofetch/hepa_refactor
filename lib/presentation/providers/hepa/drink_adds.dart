import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/add_drinks/add_drinks.dart';

import 'package:hepa/presentation/providers/usecases/add_drinks.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drink_adds.g.dart';

@riverpod
class DrinkAdds extends _$DrinkAdds {
  @override
  dynamic build() {
    // TODO: implement build
    throw UnimplementedError();
  }

  Future<void> addFood({required List<int> drinks}) async {
    AddDrinks addDrinks = await ref.read(addDrinksProvider);
    var result = addDrinks(AddDrinksParams(drinks: drinks));
    switch (result) {
      case Success(value: final user):
        state = AsyncData(user);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData(null);
    }
  }
}
