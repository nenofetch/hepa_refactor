// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_drinks.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
