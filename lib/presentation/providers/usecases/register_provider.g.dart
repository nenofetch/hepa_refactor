// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
