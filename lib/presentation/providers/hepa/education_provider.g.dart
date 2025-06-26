// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getEducations)
const getEducationsProvider = GetEducationsProvider._();

final class GetEducationsProvider extends $FunctionalProvider<
        AsyncValue<List<Education>>, List<Education>, FutureOr<List<Education>>>
    with $FutureModifier<List<Education>>, $FutureProvider<List<Education>> {
  const GetEducationsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getEducationsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getEducationsHash();

  @$internal
  @override
  $FutureProviderElement<List<Education>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Education>> create(Ref ref) {
    return getEducations(ref);
  }
}

String _$getEducationsHash() => r'95ba74859849aa4efc793b7c1089a20c099185a0';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
