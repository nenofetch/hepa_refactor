import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/tdee.dart';

abstract interface class TdeeRepository {
  Future<Result<Tdee>> checkTdee({
    required double weight,
    required double height,
    required String activity,
  });
}
