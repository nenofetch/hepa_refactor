// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sport.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getSports)
const getSportsProvider = GetSportsProvider._();

final class GetSportsProvider
    extends $FunctionalProvider<GetSports, GetSports, GetSports>
    with $Provider<GetSports> {
  const GetSportsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getSportsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getSportsHash();

  @$internal
  @override
  $ProviderElement<GetSports> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetSports create(Ref ref) {
    return getSports(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSports value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSports>(value),
    );
  }
}

String _$getSportsHash() => r'd89d09f43ad0ef1c0853c302ec5ac131aaf0c0ce';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
