

import 'package:hepa/domain/usecases/get_anthropometry/get_anthropometry.dart';
import 'package:hepa/presentation/providers/repositories/anthropometry_repository/anthropometry_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_anthropometry.g.dart';

@riverpod
GetAnthropometry getAnthropometry(GetAnthropometryRef ref) => GetAnthropometry(anthropometryRepository: ref.watch(anthropometryRepositoryProvider));