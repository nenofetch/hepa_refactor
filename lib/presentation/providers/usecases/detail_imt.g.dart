// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_imt.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(detailImt)
const detailImtProvider = DetailImtProvider._();

final class DetailImtProvider
    extends $FunctionalProvider<DetailImt, DetailImt, DetailImt>
    with $Provider<DetailImt> {
  const DetailImtProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'detailImtProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$detailImtHash();

  @$internal
  @override
  $ProviderElement<DetailImt> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DetailImt create(Ref ref) {
    return detailImt(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DetailImt value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DetailImt>(value),
    );
  }
}

String _$detailImtHash() => r'dba80e0781fa53ed3bb86a66fd728ee65705c5c7';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
