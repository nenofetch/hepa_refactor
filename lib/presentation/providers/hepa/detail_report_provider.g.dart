// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_report_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
