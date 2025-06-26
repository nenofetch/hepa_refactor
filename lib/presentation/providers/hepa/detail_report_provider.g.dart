// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_report_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(detailReports)
const detailReportsProvider = DetailReportsProvider._();

final class DetailReportsProvider extends $FunctionalProvider<
        AsyncValue<DetailReportData?>,
        DetailReportData?,
        FutureOr<DetailReportData?>>
    with
        $FutureModifier<DetailReportData?>,
        $FutureProvider<DetailReportData?> {
  const DetailReportsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'detailReportsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$detailReportsHash();

  @$internal
  @override
  $FutureProviderElement<DetailReportData?> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<DetailReportData?> create(Ref ref) {
    return detailReports(ref);
  }
}

String _$detailReportsHash() => r'6bcd9704599263b91ee04e2052b1f33abdb35644';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
