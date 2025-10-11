// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
