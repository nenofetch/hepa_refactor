import 'package:hepa/domain/usecases/add_drinks/add_drinks.dart';
import 'package:hepa/presentation/providers/repositories/drink_repository/drink_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_drinks.g.dart';

@riverpod
AddDrinks addDrinks(AddDrinksRef ref) =>
    AddDrinks(drinkRepository: ref.watch(drinkRepositoryProvider));
