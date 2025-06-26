// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Reports)
const reportsProvider = ReportsProvider._();

final class ReportsProvider extends $AsyncNotifierProvider<Reports, Report?> {
  const ReportsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'reportsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$reportsHash();

  @$internal
  @override
  Reports create() => Reports();
}

String _$reportsHash() => r'1f8795dc8b01805e0ba74e73b27ae8d49ea8c8bd';

abstract class _$Reports extends $AsyncNotifier<Report?> {
  FutureOr<Report?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Report?>, Report?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<Report?>, Report?>,
        AsyncValue<Report?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
