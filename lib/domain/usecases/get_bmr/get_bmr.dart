import 'package:hepa/data/repositories/bmr_repository.dart';

import 'package:hepa/domain/entities/bmr.dart';

import '../../entities/result.dart';
import '../usecase.dart';

class GetBmr implements UseCase<Result<BMR>, void> {
  final BmrRepository bmrRepository;

  GetBmr({required this.bmrRepository});

  @override
  Future<Result<BMR>> call(void _) async {
    var getBMR = await bmrRepository.getBMR();

    return switch (getBMR) {
      Success(value: final bmr) => Result.success(bmr),
      Failed(:final message) => Result.failed(message),
    };
  }
}
