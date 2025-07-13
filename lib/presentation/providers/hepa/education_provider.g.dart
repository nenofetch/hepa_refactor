// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Educations)
const educationsProvider = EducationsProvider._();

final class EducationsProvider
    extends $AsyncNotifierProvider<Educations, List<Education>> {
  const EducationsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'educationsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$educationsHash();

  @$internal
  @override
  Educations create() => Educations();
}

String _$educationsHash() => r'33ffcb680fca90ec22337a337e6a2c1602b9b734';

abstract class _$Educations extends $AsyncNotifier<List<Education>> {
  FutureOr<List<Education>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Education>>, List<Education>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Education>>, List<Education>>,
        AsyncValue<List<Education>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
