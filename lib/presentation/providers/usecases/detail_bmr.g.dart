// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_bmr.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
