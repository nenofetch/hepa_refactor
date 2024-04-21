import 'package:hepa/data/repositories/anthropometry_repository.dart';
import 'package:hepa/domain/entities/anthropometry.dart';

import '../../entities/result.dart';
import '../usecase.dart';

class GetAnthropometry implements UseCase<Result<Anthropometry>, void> {
  final AnthropometryRepository anthropometryRepository;

  GetAnthropometry({required this.anthropometryRepository});

  @override
  Future<Result<Anthropometry>> call(void _) async {
    var getAnthro = await anthropometryRepository.getAnthropometry();

    return switch (getAnthro) {
      Success(value: final anthro) => Result.success(anthro),
      Failed(:final message) => Result.failed(message),
    };
  }
}
