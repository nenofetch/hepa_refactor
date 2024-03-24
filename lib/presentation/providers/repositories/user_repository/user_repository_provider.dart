import 'package:hepa/data/api/hepa_user_repository.dart';
import 'package:hepa/data/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository_provider.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) => HepaUserRepository();
