// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_tdee.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
