import 'package:hepa/data/api/hepa_tdee.dart';
import 'package:hepa/data/repositories/tdee_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tdee_repository_provider.g.dart';

@riverpod
TdeeRepository tdeeRepository(TdeeRepositoryRef ref) => HepaTdee();
