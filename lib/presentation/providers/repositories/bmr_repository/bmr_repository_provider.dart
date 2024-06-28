import 'package:hepa/data/api/hepa_bmr.dart';
import 'package:hepa/data/repositories/bmr_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bmr_repository_provider.g.dart';

@riverpod
BmrRepository bmrRepository(BmrRepositoryRef ref) => HepaBmr();
