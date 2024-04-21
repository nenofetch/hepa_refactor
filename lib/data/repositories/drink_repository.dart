import 'package:hepa/domain/entities/drink.dart';
import 'package:hepa/domain/entities/result.dart';

abstract interface class DrinkRepository {
  // Get all drinks
  Future<Result<List<Drink>>> getDrinks();

  // Add drink
  Future<Result<Drink>> addDrink({
    required List<int> drinks,
    String category = "Minuman",
  });
}
