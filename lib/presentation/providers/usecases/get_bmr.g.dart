// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bmr.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getBmr)
const getBmrProvider = GetBmrProvider._();

final class GetBmrProvider extends $FunctionalProvider<GetBmr, GetBmr, GetBmr>
    with $Provider<GetBmr> {
  const GetBmrProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getBmrProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getBmrHash();

  @$internal
  @override
  $ProviderElement<GetBmr> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetBmr create(Ref ref) {
    return getBmr(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetBmr value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetBmr>(value),
    );
  }
}

String _$getBmrHash() => r'7fc6aa9d0784cb7bbe60dc8e6ab940f8e73d143b';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
