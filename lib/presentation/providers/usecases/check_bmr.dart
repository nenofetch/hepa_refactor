import 'package:hepa/domain/usecases/check_bmr/check_bmr.dart';
import 'package:hepa/presentation/providers/repositories/bmr_repository/bmr_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'check_bmr.g.dart';

@riverpod
CheckBmr checkBmr(CheckBmrRef ref) =>
    CheckBmr(bmrRepository: ref.watch(bmrRepositoryProvider));
