import 'package:hepa/data/repositories/anthropometry_repository.dart';
import 'package:hepa/domain/entities/anthropometry.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class DetailImt implements UseCase<Result<List<Anthropometry>>, void> {
  final AnthropometryRepository _anthropometryRepository;

  DetailImt({required AnthropometryRepository anthropometryRepository})
      : _anthropometryRepository = anthropometryRepository;

  @override
  Future<Result<List<Anthropometry>>> call(void _) async {
    var detailImt = await _anthropometryRepository.showDetailAnthropometry();

    return switch (detailImt) {
      Success(value: final anthropometry) => Result.success(anthropometry),
      Failed(:final message) => Result.failed(message),
    };
  }
}
