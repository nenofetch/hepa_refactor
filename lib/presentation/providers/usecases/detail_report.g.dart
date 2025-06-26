// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_report.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(detailReport)
const detailReportProvider = DetailReportProvider._();

final class DetailReportProvider
    extends $FunctionalProvider<DetailReport, DetailReport, DetailReport>
    with $Provider<DetailReport> {
  const DetailReportProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'detailReportProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$detailReportHash();

  @$internal
  @override
  $ProviderElement<DetailReport> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DetailReport create(Ref ref) {
    return detailReport(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DetailReport value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DetailReport>(value),
    );
  }
}

String _$detailReportHash() => r'd6e7a9e7f84ae038570adb89a03efe586b26262b';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
