part of 'register.dart';

class RegisterParams {
  final String name;
  final String email;
  final String password;
  final String retypedPassword;
  final String work;
  final String dateOfBirth;
  final String gender;

  RegisterParams({
    required this.name,
    required this.email,
    required this.password,
    required this.retypedPassword,
    required this.work,
    required this.dateOfBirth,
    required this.gender,
  });
}
