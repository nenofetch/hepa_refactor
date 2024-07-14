import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/sport.dart';

abstract interface class SportRepository {
  Future<Result<List<Sport>>> getSports();
  
  Future<Result<String>> postSportActivity({
    required String duration,
    required String name,
  });
}
