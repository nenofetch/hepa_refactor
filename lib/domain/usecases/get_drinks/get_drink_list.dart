import 'package:hepa/data/repositories/drink_repository.dart';
import 'package:hepa/domain/entities/drink.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class GetDrinkList implements UseCase<Result<List<Drink>>, void> {
  final DrinkRepository _drinkRepository;

  GetDrinkList({required DrinkRepository drinkRepository})
      : _drinkRepository = drinkRepository;

  @override
  Future<Result<List<Drink>>> call(void _) async {
    var drinksList = await _drinkRepository.getDrinks();

    return switch (drinksList) {
      Success(value: final drink) => Result.success(drink),
      Failed(:final message) => Result.failed(message),
    };
  }
}
