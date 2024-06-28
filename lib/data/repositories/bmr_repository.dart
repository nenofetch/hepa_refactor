import 'package:hepa/domain/entities/bmr.dart';
import 'package:hepa/domain/entities/result.dart';

abstract interface class BmrRepository {
  Future<Result<BMR>> checkBMR({
    required double weight,
    required double height,
  });
}
