// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_drinks.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(addDrinks)
const addDrinksProvider = AddDrinksProvider._();

final class AddDrinksProvider
    extends $FunctionalProvider<AddDrinks, AddDrinks, AddDrinks>
    with $Provider<AddDrinks> {
  const AddDrinksProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addDrinksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addDrinksHash();

  @$internal
  @override
  $ProviderElement<AddDrinks> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddDrinks create(Ref ref) {
    return addDrinks(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddDrinks value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddDrinks>(value),
    );
  }
}

String _$addDrinksHash() => r'b9ed603d1da96ee7bd126f4a2b919d75a5d6b99d';
