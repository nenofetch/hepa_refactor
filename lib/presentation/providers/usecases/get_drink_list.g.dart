// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_drink_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getDrinkList)
const getDrinkListProvider = GetDrinkListProvider._();

final class GetDrinkListProvider
    extends $FunctionalProvider<GetDrinkList, GetDrinkList, GetDrinkList>
    with $Provider<GetDrinkList> {
  const GetDrinkListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getDrinkListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getDrinkListHash();

  @$internal
  @override
  $ProviderElement<GetDrinkList> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetDrinkList create(Ref ref) {
    return getDrinkList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetDrinkList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetDrinkList>(value),
    );
  }
}

String _$getDrinkListHash() => r'6dfb0083cbf1455966dfa18608d2c9603a0ec3dd';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
