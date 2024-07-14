import 'package:hepa/data/repositories/bmr_repository.dart';
import 'package:hepa/domain/entities/bmr.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class DetailBmr implements UseCase<Result<List<BMR>>, void> {
  final BmrRepository _bmrRepository;

  DetailBmr({required BmrRepository bmrRepository})
      : _bmrRepository = bmrRepository;

  @override
  Future<Result<List<BMR>>> call(void _) async {
    var detailBMR = await _bmrRepository.showDetailBMR();

    return switch (detailBMR) {
      Success(value: final bmr) => Result.success(bmr),
      Failed(:final message) => Result.failed(message),
    };
  }
}
