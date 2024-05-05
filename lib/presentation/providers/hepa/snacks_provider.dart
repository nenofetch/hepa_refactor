import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/snack.dart';
import 'package:hepa/domain/usecases/add_snacks/add_snacks.dart';
import 'package:hepa/domain/usecases/get_snacks/get_snack_list.dart';
import 'package:hepa/presentation/providers/usecases/add_snacks.dart';
import 'package:hepa/presentation/providers/usecases/get_snack_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'snacks_provider.g.dart';

@Riverpod()
class Snacks extends _$Snacks {
  @override
  FutureOr<List<Snack>> build() async {
    GetSnackList getSnacksList = ref.read(getSnackListProvider);
    var result = await getSnacksList(null);
    switch (result) {
      case Success(value: final snacks):
        return snacks;
      case Failed(message: _):
        return [];
    }
  }


  
  Future<void> addFood({required List<int> snacks}) async {
    AddSnacks addDrinks = await ref.read(addSnacksProvider);
    var result = addDrinks(AddSnacksParams(snacks: snacks));
    switch (result) {
      case Success(value: final user):
        state = AsyncData(user);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData([]);
    }
  }
}
