import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';

abstract interface class UserRepository {
  Future<Result<User>> getUser();
  Future<Result<User>> updateUser({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required String gender,
    required String dateOfBirth,
    required String work,
  });
}
