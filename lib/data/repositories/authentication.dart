import 'package:hepa/domain/entities/result.dart';

abstract interface class Authentication {
  // Login function
  Future<Result<String>> login({
    required String email,
    required String password,
  });

  // Register function
  Future<Result<String>> register({
    required String name,
    required String email,
    required String password,
    required String retypePassword,
    required String gender,
    required String dateOfBirth,
    required String work,
  });

  // Logout function
  Future<Result<void>> logout();

  Future<Result<String>> getLoggedInUser();
}
