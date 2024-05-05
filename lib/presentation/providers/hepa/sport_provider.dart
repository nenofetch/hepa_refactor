import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/sport.dart';
import 'package:hepa/domain/usecases/get_sports/get_sports.dart';
import 'package:hepa/presentation/providers/usecases/get_sport.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sport_provider.g.dart';

@Riverpod()
Future<List<Sport>> getSportList(GetSportListRef ref) async {
  GetSports getSports = ref.read(getSportsProvider);

  var result = await getSports(null);
  return switch (result) {
    Success(value: final sports) => sports,
    Failed(message: _) => const []
  };
}
