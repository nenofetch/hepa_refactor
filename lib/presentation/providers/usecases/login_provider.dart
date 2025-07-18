import 'package:hepa/domain/usecases/login/login.dart';
import 'package:hepa/presentation/providers/repositories/authentication/authentication_provider.dart';
import 'package:hepa/presentation/providers/repositories/user_repository/user_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@riverpod
Login login(Ref ref) => Login(
    authentication: ref.watch(authenticationProvider),
    userRepository: ref.watch(userRepositoryProvider));
