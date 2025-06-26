// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snack_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(snackRepository)
const snackRepositoryProvider = SnackRepositoryProvider._();

final class SnackRepositoryProvider extends $FunctionalProvider<SnackRepository,
    SnackRepository, SnackRepository> with $Provider<SnackRepository> {
  const SnackRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'snackRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$snackRepositoryHash();

  @$internal
  @override
  $ProviderElement<SnackRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SnackRepository create(Ref ref) {
    return snackRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SnackRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SnackRepository>(value),
    );
  }
}

String _$snackRepositoryHash() => r'faa57a0abd4d297935c6c7a9f77899c1ebd4c263';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
