// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_bmr.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(detailBmr)
const detailBmrProvider = DetailBmrProvider._();

final class DetailBmrProvider
    extends $FunctionalProvider<DetailBmr, DetailBmr, DetailBmr>
    with $Provider<DetailBmr> {
  const DetailBmrProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'detailBmrProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$detailBmrHash();

  @$internal
  @override
  $ProviderElement<DetailBmr> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DetailBmr create(Ref ref) {
    return detailBmr(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DetailBmr value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DetailBmr>(value),
    );
  }
}

String _$detailBmrHash() => r'5598badd92fc565d5ecc631abfd9fd1698b59bd7';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
