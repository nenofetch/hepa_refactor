import 'package:hepa/domain/usecases/post_activities_sport/post_activities_sport.dart';
import 'package:hepa/presentation/providers/repositories/sport_repository/sport_repository_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_activities_sport.g.dart';

@riverpod
PostActivitiesSport postActivitiesSport(PostActivitiesSportRef ref) =>
    PostActivitiesSport(sportRepository: ref.watch(sportRepositoryProvider));
