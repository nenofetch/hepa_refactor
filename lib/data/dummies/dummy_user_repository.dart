import 'package:hepa/data/repositories/user_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';

class DummyUserRepository implements UserRepository {
  @override
  Future<Result<User>> getUser({required String token}) async {
    await Future.delayed(const Duration(seconds: 3));
    return Result.success(
      User(
        id: 1,
        name: 'John Doe',
        email: 'johndoe@gmail',
      ),
    );
  }

  @override
  Future<Result<User>> updateUser() {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
