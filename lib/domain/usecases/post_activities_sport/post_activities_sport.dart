import 'package:hepa/data/repositories/sport_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/usecases/post_activities_sport/post_activities_sport_params.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class PostActivitiesSport
    implements UseCase<Result<String>, PostActivitiesSportParams> {
  final SportRepository sportRepository;

  PostActivitiesSport({required this.sportRepository});

  @override
  Future<Result<String>> call(PostActivitiesSportParams params) async {
    var sports = await sportRepository.postSportActivity(
        duration: params.duration, name: params.name);

    return sports;
  }
}
