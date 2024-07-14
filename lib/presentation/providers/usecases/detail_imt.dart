import 'package:hepa/domain/usecases/detail_imt/detail_imt.dart';
import 'package:hepa/presentation/providers/repositories/anthropometry_repository/anthropometry_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_imt.g.dart';

@riverpod
DetailImt detailImt(DetailImtRef ref) => DetailImt(
    anthropometryRepository: ref.watch(anthropometryRepositoryProvider));
