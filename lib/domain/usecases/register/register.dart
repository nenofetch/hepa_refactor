import 'package:hepa/data/repositories/authentication.dart';
import 'package:hepa/data/repositories/user_repository.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';
import 'package:hepa/domain/usecases/usecase.dart';

part 'register_params.dart';

class Register implements UseCase<Result<User>, RegisterParams> {
  final Authentication _authentication;
  final UserRepository _userRepository;

  Register(
      {required Authentication authentication,
      required UserRepository userRepository})
      : _authentication = authentication,
        _userRepository = userRepository;
  @override
  Future<Result<User>> call(RegisterParams params) async {
    var userId = await _authentication.register(
      email: params.email,
      password: params.password,
      retypePassword: params.retypedPassword,
      name: params.name,
      gender: params.gender,
      dateOfBirth: params.dateOfBirth,
      work: params.work,
    );
    if (userId is Success) {
      var userResult = await _userRepository.getUser();
      return switch (userResult) {
        Success(value: final user) => Result.success(user),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      return Result.failed(userId.errorMessage!);
    }
  }
}
