import 'package:hepa/data/api/hepa_drink.dart';
import 'package:hepa/data/repositories/drink_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drink_repository_provider.g.dart';

@riverpod
DrinkRepository drinkRepository(DrinkRepositoryRef ref) => HepaDrink();
