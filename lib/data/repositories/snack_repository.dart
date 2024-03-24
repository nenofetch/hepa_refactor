import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/snack.dart';

abstract interface class SnackRepository {
  // Get all foods
  Future<Result<List<Snack>>> getFoods();

  // Add food
  Future<Result<Snack>> addFood({
    required List<int> id,
    String category = "Cemilan",
  });
}
