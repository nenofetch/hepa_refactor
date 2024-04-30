import 'package:hepa/data/api/hepa_snack.dart';
import 'package:hepa/data/repositories/snack_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snack_repository_provider.g.dart';

@riverpod
SnackRepository snackRepository(SnackRepositoryRef ref) => HepaSnack();
