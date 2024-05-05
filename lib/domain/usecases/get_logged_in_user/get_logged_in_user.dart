import 'package:hepa/data/repositories/authentication.dart';
import 'package:hepa/data/repositories/user_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';
import 'package:hepa/domain/usecases/usecase.dart';

class GetLoggedInUser implements UseCase<Result<User>, void> {
  final Authentication authentication;
  final UserRepository userRepository;

  GetLoggedInUser({required this.authentication, required this.userRepository});

  @override
  Future<Result<User>> call(void _) async {
    var token = await authentication.getLoggedInUser();
    if (token is Success) {
      var userResult = await userRepository.getUser();
      return switch (userResult) {
        Success(value: final user) => Result.success(user),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      return Result.failed('User not logged in');
    }
  }
}
