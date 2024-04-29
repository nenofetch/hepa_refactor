import 'package:hepa/domain/usecases/get_snacks/get_snack_list.dart';
import 'package:hepa/presentation/providers/repositories/snack_repository/snack_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_snack_list.g.dart';

@riverpod
GetSnackList getSnackList(GetSnackListRef ref) =>
    GetSnackList(snackRepository: ref.watch(snackRepositoryProvider));
