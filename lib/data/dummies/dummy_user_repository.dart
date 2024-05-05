import 'package:hepa/data/repositories/user_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';

class DummyUserRepository implements UserRepository {
  @override
  Future<Result<User>> updateUser(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirmation,
      required String gender,
      required String dateOfBirth,
      required String work}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> getUser() {
    throw UnimplementedError();
  }
}
