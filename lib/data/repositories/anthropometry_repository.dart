import 'package:hepa/domain/entities/anthropometry.dart';
import 'package:hepa/domain/entities/result.dart';

abstract interface class AnthropometryRepository {
  Future<Result<Anthropometry>> checkAnthropometry({
    required double weight,
    required double height,
  });
  Future<Result<Anthropometry>> getAnthropometry();
}
