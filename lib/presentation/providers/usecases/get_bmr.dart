import 'package:hepa/domain/usecases/get_bmr/get_bmr.dart';
import 'package:hepa/presentation/providers/repositories/bmr_repository/bmr_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_bmr.g.dart';

@riverpod
GetBmr getBmr(GetBmrRef ref) =>
    GetBmr(bmrRepository: ref.watch(bmrRepositoryProvider));
