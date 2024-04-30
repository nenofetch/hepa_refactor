import 'package:hepa/data/api/hepa_anthropometry.dart';
import 'package:hepa/data/repositories/anthropometry_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'anthropometry_repository_provider.g.dart';

@riverpod
AnthropometryRepository anthropometryRepository(
        AnthropometryRepositoryRef ref) =>
    HepaAnthropometry();
