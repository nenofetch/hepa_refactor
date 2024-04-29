import 'package:hepa/domain/usecases/get_drinks/get_drink_list.dart';
import 'package:hepa/presentation/providers/repositories/drink_repository/drink_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_drink_list.g.dart';

@riverpod
GetDrinkList getDrinkList(GetDrinkListRef ref) =>
    GetDrinkList(drinkRepository: ref.watch(drinkRepositoryProvider));
