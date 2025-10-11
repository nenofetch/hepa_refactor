// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sportRepository)
const sportRepositoryProvider = SportRepositoryProvider._();

final class SportRepositoryProvider extends $FunctionalProvider<SportRepository,
    SportRepository, SportRepository> with $Provider<SportRepository> {
  const SportRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sportRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sportRepositoryHash();

  @$internal
  @override
  $ProviderElement<SportRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SportRepository create(Ref ref) {
    return sportRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SportRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SportRepository>(value),
    );
  }
}

String _$sportRepositoryHash() => r'c7a5f2f303e58f5eb73297d3c4681f9bc24eb9df';
