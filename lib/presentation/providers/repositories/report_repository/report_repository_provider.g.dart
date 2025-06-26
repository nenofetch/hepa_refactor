// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(reportRepository)
const reportRepositoryProvider = ReportRepositoryProvider._();

final class ReportRepositoryProvider extends $FunctionalProvider<
    ReportRepository,
    ReportRepository,
    ReportRepository> with $Provider<ReportRepository> {
  const ReportRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'reportRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$reportRepositoryHash();

  @$internal
  @override
  $ProviderElement<ReportRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReportRepository create(Ref ref) {
    return reportRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReportRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReportRepository>(value),
    );
  }
}

String _$reportRepositoryHash() => r'628eb8b8ee867ea7480ef7c330a74a2fe085b06b';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
