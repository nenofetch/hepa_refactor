// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_consultation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getConsultations)
const getConsultationsProvider = GetConsultationsProvider._();

final class GetConsultationsProvider extends $FunctionalProvider<
    GetConsultations,
    GetConsultations,
    GetConsultations> with $Provider<GetConsultations> {
  const GetConsultationsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getConsultationsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getConsultationsHash();

  @$internal
  @override
  $ProviderElement<GetConsultations> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetConsultations create(Ref ref) {
    return getConsultations(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetConsultations value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetConsultations>(value),
    );
  }
}

String _$getConsultationsHash() => r'e0e8a3890603a1b68a0053226e863e0c91a9634a';
