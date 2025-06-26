// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(register)
const registerProvider = RegisterProvider._();

final class RegisterProvider
    extends $FunctionalProvider<Register, Register, Register>
    with $Provider<Register> {
  const RegisterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'registerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$registerHash();

  @$internal
  @override
  $ProviderElement<Register> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Register create(Ref ref) {
    return register(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Register value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Register>(value),
    );
  }
}

String _$registerHash() => r'd055f0e8555d63be4de8869df0fa38c1f512587a';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
