// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(educationRepository)
const educationRepositoryProvider = EducationRepositoryProvider._();

final class EducationRepositoryProvider extends $FunctionalProvider<
    EducationRepository,
    EducationRepository,
    EducationRepository> with $Provider<EducationRepository> {
  const EducationRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'educationRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$educationRepositoryHash();

  @$internal
  @override
  $ProviderElement<EducationRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  EducationRepository create(Ref ref) {
    return educationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EducationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EducationRepository>(value),
    );
  }
}

String _$educationRepositoryHash() =>
    r'6e38bace055d0ad0848c5960c2d65aa5af1952ad';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
