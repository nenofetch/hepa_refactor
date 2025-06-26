// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(authentication)
const authenticationProvider = AuthenticationProvider._();

final class AuthenticationProvider
    extends $FunctionalProvider<Authentication, Authentication, Authentication>
    with $Provider<Authentication> {
  const AuthenticationProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authenticationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authenticationHash();

  @$internal
  @override
  $ProviderElement<Authentication> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Authentication create(Ref ref) {
    return authentication(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Authentication value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Authentication>(value),
    );
  }
}

String _$authenticationHash() => r'79da6d965137e659f6fc8abbe93a073571f0d105';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
