import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/sport.dart';

abstract interface class SportRepository {
  Future<Result<List<Sport>>> getSports();
}
