import 'package:hepa/domain/usecases/check_tdee/check_tdee.dart';
import 'package:hepa/presentation/providers/repositories/tdee_repository/tdee_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'check_tdee.g.dart';

@riverpod
CheckTdee checkTdee(CheckTdeeRef ref) =>
    CheckTdee(tdeeRepository: ref.watch(tdeeRepositoryProvider));
