import 'package:hepa/domain/usecases/detail_bmr/detail_bmr.dart';
import 'package:hepa/presentation/providers/repositories/bmr_repository/bmr_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_bmr.g.dart';

@riverpod
DetailBmr detailBmr(DetailBmrRef ref) =>
    DetailBmr(bmrRepository: ref.watch(bmrRepositoryProvider));
