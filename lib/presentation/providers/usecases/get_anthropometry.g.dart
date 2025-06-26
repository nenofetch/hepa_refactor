// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_anthropometry.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getAnthropometry)
const getAnthropometryProvider = GetAnthropometryProvider._();

final class GetAnthropometryProvider extends $FunctionalProvider<
    GetAnthropometry,
    GetAnthropometry,
    GetAnthropometry> with $Provider<GetAnthropometry> {
  const GetAnthropometryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getAnthropometryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getAnthropometryHash();

  @$internal
  @override
  $ProviderElement<GetAnthropometry> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetAnthropometry create(Ref ref) {
    return getAnthropometry(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAnthropometry value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAnthropometry>(value),
    );
  }
}

String _$getAnthropometryHash() => r'c29bead576ac7d35abe275604b632ce142aa8ce9';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
