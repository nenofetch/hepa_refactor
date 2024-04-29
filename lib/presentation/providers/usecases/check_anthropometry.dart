import 'package:hepa/domain/usecases/check_anthropometry/check_anthropometry.dart';
import 'package:hepa/presentation/providers/repositories/anthropometry_repository/anthropometry_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'check_anthropometry.g.dart';

@riverpod
CheckAnthropometry checkAnthropometry(CheckAnthropometryRef ref) =>
    CheckAnthropometry(
        anthropometryRepository: ref.watch(anthropometryRepositoryProvider));
