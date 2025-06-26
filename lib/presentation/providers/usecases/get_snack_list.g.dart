// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_snack_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getSnackList)
const getSnackListProvider = GetSnackListProvider._();

final class GetSnackListProvider
    extends $FunctionalProvider<GetSnackList, GetSnackList, GetSnackList>
    with $Provider<GetSnackList> {
  const GetSnackListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getSnackListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getSnackListHash();

  @$internal
  @override
  $ProviderElement<GetSnackList> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetSnackList create(Ref ref) {
    return getSnackList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSnackList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSnackList>(value),
    );
  }
}

String _$getSnackListHash() => r'72d6a4833dfbbd69884794b403f807cdf704f455';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
