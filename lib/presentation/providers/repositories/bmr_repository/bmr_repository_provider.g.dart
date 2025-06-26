// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmr_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(bmrRepository)
const bmrRepositoryProvider = BmrRepositoryProvider._();

final class BmrRepositoryProvider
    extends $FunctionalProvider<BmrRepository, BmrRepository, BmrRepository>
    with $Provider<BmrRepository> {
  const BmrRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'bmrRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$bmrRepositoryHash();

  @$internal
  @override
  $ProviderElement<BmrRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BmrRepository create(Ref ref) {
    return bmrRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BmrRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BmrRepository>(value),
    );
  }
}

String _$bmrRepositoryHash() => r'f29c8b601addf95a45090121080e2fbda708e7fe';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
