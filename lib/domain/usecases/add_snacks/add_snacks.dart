import 'package:hepa/data/repositories/snack_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/snack.dart';

import 'package:hepa/domain/usecases/usecase.dart';

part 'add_snacks_params.dart';

class AddSnacks implements UseCase<Result<Snack>, AddSnacksParams> {
  final SnackRepository snackRepository;

  AddSnacks({required this.snackRepository});

  @override
  Future<Result<Snack>> call(AddSnacksParams params) async {
    var snacksList = await snackRepository.addSnack(snacks: params.snacks);

    return snacksList;
  }
}
