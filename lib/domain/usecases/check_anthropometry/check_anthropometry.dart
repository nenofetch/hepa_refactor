import 'package:hepa/data/repositories/anthropometry_repository.dart';
import 'package:hepa/domain/entities/anthropometry.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

part 'check_anthropometry_params.dart';

class CheckAnthropometry
    implements UseCase<Result<Anthropometry>, CheckAnthropometryParams> {
  final AnthropometryRepository anthropometryRepository;

  CheckAnthropometry({required this.anthropometryRepository});

  @override
  Future<Result<Anthropometry>> call(CheckAnthropometryParams params) async {
    var anthropometry = await anthropometryRepository.checkAnthropometry(
      weight: params.weight,
      height: params.height,
    );

    return anthropometry;
  }
}
