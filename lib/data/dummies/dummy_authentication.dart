import 'package:hepa/data/repositories/authentication.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';

class DummyAuthentication implements Authentication {
  @override
  @override
  Future<Result<String>> login(
      {required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 3));
    return const Result.success('aokwoakwo');
    // return const Result.failed('Gagal Login');
  }

  @override
  Future<Result<void>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Result<String>> register(
      {required String name,
      required String email,
      required String password,
      required String retypePassword,
      required String gender,
      required String dateOfBirth,
      required String work}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> getLoggedInUser() {
    // TODO: implement getLoggedInUser
    throw UnimplementedError();
  }
}
