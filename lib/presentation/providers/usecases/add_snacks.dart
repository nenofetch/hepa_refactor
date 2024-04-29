import 'package:hepa/domain/usecases/add_snacks/add_snacks.dart';
import 'package:hepa/presentation/providers/repositories/snack_repository/snack_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_snacks.g.dart';

@riverpod
AddSnacks addSnacks(AddSnacksRef ref) =>
    AddSnacks(snackRepository: ref.watch(snackRepositoryProvider));
