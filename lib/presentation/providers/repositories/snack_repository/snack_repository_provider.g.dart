// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snack_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
