import 'package:hepa/domain/entities/drink.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/get_drinks/get_drink_list.dart';
import 'package:hepa/presentation/providers/usecases/get_drink_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drinks_provider.g.dart';

@riverpod
Future<List<Drink>> getDrinks(GetDrinksRef ref) async {
  GetDrinkList getDrinkList = ref.read(getDrinkListProvider);
  var result = await getDrinkList(null);
  return switch (result) {
    Success(value: final drinks) => drinks,
    Failed(message: _) => const []
  };
}
// class DrinksProvider extends _$DrinksProvider {
//   @override
//   FutureOr<List<Drink>> build() => const [];

//   Future<void> getDrinks() async {
//     state = const AsyncLoading();

//     GetDrinks getDrinks = ref.read(getDrinksProvider);

//     var result = await getDrinks(null);

//     switch (result) {
//       case Success(value: final foods):
//         state = AsyncData(foods);
//       case Failed(message: _):
//         state = const AsyncData([]);
//     }
//   }
// }
