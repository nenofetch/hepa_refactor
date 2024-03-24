import 'package:hepa/data/api/hepa_authentication.dart';
import 'package:hepa/data/repositories/authentication.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_provider.g.dart';

@riverpod
Authentication authentication(AuthenticationRef ref) => HepaAuthentication();
