// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_anthropometry.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(checkAnthropometry)
const checkAnthropometryProvider = CheckAnthropometryProvider._();

final class CheckAnthropometryProvider extends $FunctionalProvider<
    CheckAnthropometry,
    CheckAnthropometry,
    CheckAnthropometry> with $Provider<CheckAnthropometry> {
  const CheckAnthropometryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'checkAnthropometryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkAnthropometryHash();

  @$internal
  @override
  $ProviderElement<CheckAnthropometry> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckAnthropometry create(Ref ref) {
    return checkAnthropometry(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckAnthropometry value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckAnthropometry>(value),
    );
  }
}

String _$checkAnthropometryHash() =>
    r'14f2d99895970c401a54f87a3839ed56d315e306';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
