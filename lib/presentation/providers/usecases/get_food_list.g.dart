// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_food_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getFoodList)
const getFoodListProvider = GetFoodListProvider._();

final class GetFoodListProvider
    extends $FunctionalProvider<GetFoodList, GetFoodList, GetFoodList>
    with $Provider<GetFoodList> {
  const GetFoodListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getFoodListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getFoodListHash();

  @$internal
  @override
  $ProviderElement<GetFoodList> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetFoodList create(Ref ref) {
    return getFoodList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFoodList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFoodList>(value),
    );
  }
}

String _$getFoodListHash() => r'30de56761f2557e3685c74e8999b51bf6c27ce58';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
