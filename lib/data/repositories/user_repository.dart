import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';

abstract interface class UserRepository {
  Future<Result<User>> getUser({required String token});
  Future<Result<User>> updateUser();
}
