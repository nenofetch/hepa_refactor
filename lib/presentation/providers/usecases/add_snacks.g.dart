// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_snacks.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
