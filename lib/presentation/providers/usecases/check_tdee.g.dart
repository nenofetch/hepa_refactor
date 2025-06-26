// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_tdee.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(checkTdee)
const checkTdeeProvider = CheckTdeeProvider._();

final class CheckTdeeProvider
    extends $FunctionalProvider<CheckTdee, CheckTdee, CheckTdee>
    with $Provider<CheckTdee> {
  const CheckTdeeProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'checkTdeeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkTdeeHash();

  @$internal
  @override
  $ProviderElement<CheckTdee> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckTdee create(Ref ref) {
    return checkTdee(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckTdee value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckTdee>(value),
    );
  }
}

String _$checkTdeeHash() => r'b56324b1cc23a621f579ecd3581d2c479762d1f7';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
