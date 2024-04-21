import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/snack.dart';

abstract interface class SnackRepository {
  // Get all foods
  Future<Result<List<Snack>>> getSnacks();

  // Add food
  Future<Result<Snack>> addSnack({
    required List<int> snacks,
    String category = "Cemilan",
  });
}
