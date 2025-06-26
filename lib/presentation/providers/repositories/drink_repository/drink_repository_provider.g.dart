// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drink_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
