// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_consultation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(addConsultation)
const addConsultationProvider = AddConsultationProvider._();

final class AddConsultationProvider extends $FunctionalProvider<AddConsultation,
    AddConsultation, AddConsultation> with $Provider<AddConsultation> {
  const AddConsultationProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addConsultationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addConsultationHash();

  @$internal
  @override
  $ProviderElement<AddConsultation> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddConsultation create(Ref ref) {
    return addConsultation(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddConsultation value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddConsultation>(value),
    );
  }
}

String _$addConsultationHash() => r'8d1a72abfb3d4b0fb0ac3cc5329bc8a374fd5d64';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
