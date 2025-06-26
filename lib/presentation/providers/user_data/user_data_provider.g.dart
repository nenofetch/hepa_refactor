// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(UserData)
const userDataProvider = UserDataProvider._();

final class UserDataProvider extends $AsyncNotifierProvider<UserData, User?> {
  const UserDataProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'userDataProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$userDataHash();

  @$internal
  @override
  UserData create() => UserData();
}

String _$userDataHash() => r'8a6115631f4060b2579d6334987ea29c07d07586';

abstract class _$UserData extends $AsyncNotifier<User?> {
  FutureOr<User?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<User?>, User?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<User?>, User?>,
        AsyncValue<User?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
