import 'package:hepa/domain/usecases/get_sports/get_sports.dart';
import 'package:hepa/presentation/providers/repositories/sport_repository/sport_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_sport.g.dart';

@riverpod
GetSports getSports(GetSportsRef ref) =>
    GetSports(sportRepository: ref.watch(sportRepositoryProvider));
