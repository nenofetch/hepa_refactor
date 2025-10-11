// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_education_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getEducation)
const getEducationProvider = GetEducationProvider._();

final class GetEducationProvider
    extends $FunctionalProvider<GetEducation, GetEducation, GetEducation>
    with $Provider<GetEducation> {
  const GetEducationProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getEducationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getEducationHash();

  @$internal
  @override
  $ProviderElement<GetEducation> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetEducation create(Ref ref) {
    return getEducation(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetEducation value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetEducation>(value),
    );
  }
}

String _$getEducationHash() => r'03967b27a9a98873dac0ef0c986f847fae17db89';
