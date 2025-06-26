// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Sports)
const sportsProvider = SportsProvider._();

final class SportsProvider extends $AsyncNotifierProvider<Sports, List<Sport>> {
  const SportsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'sportsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$sportsHash();

  @$internal
  @override
  Sports create() => Sports();
}

String _$sportsHash() => r'a160dc8c7bb4936697730ea05bdec28f66012a4d';

abstract class _$Sports extends $AsyncNotifier<List<Sport>> {
  FutureOr<List<Sport>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Sport>>, List<Sport>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Sport>>, List<Sport>>,
        AsyncValue<List<Sport>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
