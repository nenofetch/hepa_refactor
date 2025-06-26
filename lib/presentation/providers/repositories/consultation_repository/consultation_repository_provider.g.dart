// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(consultationRepository)
const consultationRepositoryProvider = ConsultationRepositoryProvider._();

final class ConsultationRepositoryProvider extends $FunctionalProvider<
    ConsultationRepository,
    ConsultationRepository,
    ConsultationRepository> with $Provider<ConsultationRepository> {
  const ConsultationRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'consultationRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$consultationRepositoryHash();

  @$internal
  @override
  $ProviderElement<ConsultationRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ConsultationRepository create(Ref ref) {
    return consultationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConsultationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConsultationRepository>(value),
    );
  }
}

String _$consultationRepositoryHash() =>
    r'2c4fc11c7020d80a803b853b59aadc59387e5e3e';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
