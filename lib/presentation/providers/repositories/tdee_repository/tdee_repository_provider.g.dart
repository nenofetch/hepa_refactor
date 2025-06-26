// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tdee_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(tdeeRepository)
const tdeeRepositoryProvider = TdeeRepositoryProvider._();

final class TdeeRepositoryProvider
    extends $FunctionalProvider<TdeeRepository, TdeeRepository, TdeeRepository>
    with $Provider<TdeeRepository> {
  const TdeeRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tdeeRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tdeeRepositoryHash();

  @$internal
  @override
  $ProviderElement<TdeeRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TdeeRepository create(Ref ref) {
    return tdeeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TdeeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TdeeRepository>(value),
    );
  }
}

String _$tdeeRepositoryHash() => r'da72c59915ff51e5209b79a6b3475938e30e0ff5';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
