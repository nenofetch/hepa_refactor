import 'package:hepa/data/repositories/drink_repository.dart';
import 'package:hepa/domain/entities/drink.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

part 'add_drinks_params.dart';

class AddDrinks implements UseCase<Result<Drink>, AddDrinksParams> {
  final DrinkRepository drinkRepository;

  AddDrinks({required this.drinkRepository});

  @override
  Future<Result<Drink>> call(AddDrinksParams params) async {
    var drinksList = await drinkRepository.addDrink(
      drinks: params.drinks,
      category: params.category,
    );

    return drinksList;
  }
}
