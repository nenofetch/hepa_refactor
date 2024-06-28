import 'package:hepa/data/repositories/bmr_repository.dart';
import 'package:hepa/domain/entities/bmr.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/usecase.dart';

part 'check_bmr_params.dart';

class CheckBmr implements UseCase<Result<BMR>, CheckBmrParams> {
  final BmrRepository bmrRepository;

  CheckBmr({required this.bmrRepository});
  @override
  Future<Result<BMR>> call(CheckBmrParams params) async {
    var bmr = await bmrRepository.checkBMR(
        weight: params.weight, height: params.height);
    return bmr;
  }
}
