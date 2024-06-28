import 'package:hepa/data/repositories/tdee_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/tdee.dart';
import 'package:hepa/domain/usecases/usecase.dart';

part 'check_tdee_params.dart';

class CheckTdee implements UseCase<Result<Tdee>, CheckTdeeParams> {
  final TdeeRepository tdeeRepository;

  CheckTdee({required this.tdeeRepository});

  @override
  Future<Result<Tdee>> call(CheckTdeeParams params) async {
    var tdee = await tdeeRepository.checkTdee(
        weight: params.weight,
        height: params.height,
        activity: params.activity);
    return tdee;
  }
}
