import 'package:hepa/data/repositories/snack_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/snack.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class GetSnackList implements UseCase<Result<List<Snack>>, void> {
  final SnackRepository _snackRepository;

  GetSnackList({required SnackRepository snackRepository})
      : _snackRepository = snackRepository;

  @override
  Future<Result<List<Snack>>> call(void _) async {
    var snackList = await _snackRepository.getSnacks();

    return switch (snackList) {
      Success(value: final snack) => Result.success(snack),
      Failed(:final message) => Result.failed(message),
    };
  }
}
