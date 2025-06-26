// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_logged_in_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getLoggedInUser)
const getLoggedInUserProvider = GetLoggedInUserProvider._();

final class GetLoggedInUserProvider extends $FunctionalProvider<GetLoggedInUser,
    GetLoggedInUser, GetLoggedInUser> with $Provider<GetLoggedInUser> {
  const GetLoggedInUserProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getLoggedInUserProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getLoggedInUserHash();

  @$internal
  @override
  $ProviderElement<GetLoggedInUser> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetLoggedInUser create(Ref ref) {
    return getLoggedInUser(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetLoggedInUser value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetLoggedInUser>(value),
    );
  }
}

String _$getLoggedInUserHash() => r'230cbaa0e6b065dbc31a3580fcb176dec0b52918';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
