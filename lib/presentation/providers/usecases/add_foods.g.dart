// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_foods.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(addFoods)
const addFoodsProvider = AddFoodsProvider._();

final class AddFoodsProvider
    extends $FunctionalProvider<AddFoods, AddFoods, AddFoods>
    with $Provider<AddFoods> {
  const AddFoodsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addFoodsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addFoodsHash();

  @$internal
  @override
  $ProviderElement<AddFoods> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddFoods create(Ref ref) {
    return addFoods(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddFoods value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddFoods>(value),
    );
  }
}

String _$addFoodsHash() => r'a68c1a8a3c9ac4c88ab91093a84931748e87ee99';
