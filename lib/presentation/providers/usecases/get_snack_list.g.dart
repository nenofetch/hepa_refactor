// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_snack_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
