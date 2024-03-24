import 'package:hepa/domain/usecases/logout/logout.dart';
import 'package:hepa/presentation/providers/repositories/authentication/authentication_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logout_provider.g.dart';

@riverpod
Logout logout(LogoutRef ref) =>
    Logout(authentication: ref.watch(authenticationProvider));
