import 'package:hepa/data/repositories/sport_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/sport.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class GetSports implements UseCase<Result<List<Sport>>, void> {
  final SportRepository sportRepository;

  GetSports({required this.sportRepository});

  @override
  Future<Result<List<Sport>>> call(void params) async {
    var sportList = await sportRepository.getSports();

    return switch (sportList) {
      Success(value: final sport) => Result.success(sport),
      Failed(:final message) => Result.failed(message),
    };
  }
}
