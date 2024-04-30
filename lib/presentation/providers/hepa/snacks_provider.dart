import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/snack.dart';
import 'package:hepa/domain/usecases/get_snacks/get_snack_list.dart';
import 'package:hepa/presentation/providers/usecases/get_snack_list.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'snacks_provider.g.dart';

@Riverpod()
Future<List<Snack>> getSnacks(GetSnacksRef ref) async {
  GetSnackList getSnacksList = ref.read(getSnackListProvider);
  var result = await getSnacksList(null);
  return switch (result) {
    Success(value: final drinks) => drinks,
    Failed(message: _) => const []
  };
}
// class Snacks extends _$Snacks {
//   @override
//   FutureOr<List<Snack>> build() => const [];

//   Future<void> addSnacks({
//     required String category,
//     required List<int> snacks,
//   }) async {
//     state = const AsyncLoading();

//     AddSnacks addSnacks = await ref.read(addSnacksProvider);
//     var results = await addSnacks(AddSnacksParams(
//       snacks: snacks,
//       category: category,
//     ));

//     switch (results) {
//       case Success(value: final snack):
//         state = AsyncData([snack]);
//       case Failed(message: _):
//         state = const AsyncData([]);
//     }
//   }

//   Future<void> getSnacks() async {
//     state = const AsyncLoading();

//     GetSnacks getSnacks = ref.read(getSnacksProvider);

//     var result = await getSnacks(null);

//     switch (result) {
//       case Success(value: final _):
//         state = AsyncData([]);
//       case Failed(message: _):
//         state = const AsyncData([]);
//     }
//   }
// }
