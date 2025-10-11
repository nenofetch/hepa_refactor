// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(drinkRepository)
const drinkRepositoryProvider = DrinkRepositoryProvider._();

final class DrinkRepositoryProvider extends $FunctionalProvider<DrinkRepository,
    DrinkRepository, DrinkRepository> with $Provider<DrinkRepository> {
  const DrinkRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'drinkRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$drinkRepositoryHash();

  @$internal
  @override
  $ProviderElement<DrinkRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DrinkRepository create(Ref ref) {
    return drinkRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DrinkRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DrinkRepository>(value),
    );
  }
}

String _$drinkRepositoryHash() => r'8858be73f39432b7ecc0fcd1ea40818746e0aa35';
