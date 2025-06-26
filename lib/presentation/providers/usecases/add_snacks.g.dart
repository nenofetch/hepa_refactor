// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_snacks.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(addSnacks)
const addSnacksProvider = AddSnacksProvider._();

final class AddSnacksProvider
    extends $FunctionalProvider<AddSnacks, AddSnacks, AddSnacks>
    with $Provider<AddSnacks> {
  const AddSnacksProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addSnacksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addSnacksHash();

  @$internal
  @override
  $ProviderElement<AddSnacks> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddSnacks create(Ref ref) {
    return addSnacks(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddSnacks value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddSnacks>(value),
    );
  }
}

String _$addSnacksHash() => r'c781a7b0ca1304e59ca5762934e4c606e4d48cf7';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
