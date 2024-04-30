import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/add_drinks/add_drinks.dart';
import 'package:hepa/domain/usecases/add_snacks/add_snacks.dart';

import 'package:hepa/presentation/providers/usecases/add_drinks.dart';
import 'package:hepa/presentation/providers/usecases/add_snacks.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snack_adds.g.dart';

@riverpod
class SnackAdds extends _$SnackAdds {
  @override
  dynamic build() {
    // TODO: implement build
    throw UnimplementedError();
  }

  Future<void> addFood({required List<int> snacks}) async {
    AddSnacks addDrinks = await ref.read(addSnacksProvider);
    var result = addDrinks(AddSnacksParams(snacks: snacks));
    switch (result) {
      case Success(value: final user):
        state = AsyncData(user);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData(null);
    }
  }
}
