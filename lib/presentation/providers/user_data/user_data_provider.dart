import 'package:flutter/material.dart';
import 'package:hepa/domain/entities/result.dart';
import 'package:hepa/domain/entities/user.dart';
import 'package:hepa/domain/usecases/get_logged_in_user/get_logged_in_user.dart';
import 'package:hepa/domain/usecases/login/login.dart';
import 'package:hepa/domain/usecases/register/register.dart';
import 'package:hepa/presentation/providers/usecases/get_logged_in_user_provider.dart';
import 'package:hepa/presentation/providers/usecases/login_provider.dart';
import 'package:hepa/presentation/providers/usecases/logout_provider.dart';
import 'package:hepa/presentation/providers/usecases/register_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_data_provider.g.dart';

@Riverpod(keepAlive: true)
class UserData extends _$UserData {
  @override
  Future<User?> build() async {
    GetLoggedInUser getLoggedInUser = ref.read(getLoggedInUserProvider);

    var userResult = await getLoggedInUser(null);

    switch (userResult) {
      case Success(value: final user):
        return user;
      case Failed(message: _):
        return null;
    }
  }

  Future<void> login({required String email, required String password}) async {
    state = const AsyncLoading();

    Login login = await ref.read(loginProvider);

    var result = await login(LoginParams(email: email, password: password));

    switch (result) {
      case Success(value: final user):
        state = AsyncData(user);
      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData(null);
    }
  }

  Future<void> register({
    required String email,
    required String password,
    required String name,
    required String retypedPassword,
    required String work,
    required String dateOfBirth,
    required String gender,
  }) async {
    state = const AsyncLoading();

    Register register = await ref.read(registerProvider);
    var result = await register(RegisterParams(
        name: name,
        email: email,
        password: password,
        retypedPassword: retypedPassword,
        work: work,
        dateOfBirth: dateOfBirth,
        gender: gender));

    switch (result) {
      case Success(value: final user):
        state = AsyncData(user);

      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = const AsyncData(null);
    }
  }

  Future<void> logout() async {
    var logout = ref.read(logoutProvider);

    var result = await logout(null);

    switch (result) {
      case Success(value: _):
        state = const AsyncData(null);
      case Failed(:final message):
        state = AsyncError(FlutterError(message), StackTrace.current);
        state = AsyncData(state.valueOrNull);
    }
  }
}
