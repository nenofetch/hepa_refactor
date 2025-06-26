// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_bmr.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(checkBmr)
const checkBmrProvider = CheckBmrProvider._();

final class CheckBmrProvider
    extends $FunctionalProvider<CheckBmr, CheckBmr, CheckBmr>
    with $Provider<CheckBmr> {
  const CheckBmrProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'checkBmrProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkBmrHash();

  @$internal
  @override
  $ProviderElement<CheckBmr> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CheckBmr create(Ref ref) {
    return checkBmr(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckBmr value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckBmr>(value),
    );
  }
}

String _$checkBmrHash() => r'6901030e652c1aa53f6812d0ebf44aa7972e04d7';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
