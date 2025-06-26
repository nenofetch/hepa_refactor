// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_report.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(getReport)
const getReportProvider = GetReportProvider._();

final class GetReportProvider
    extends $FunctionalProvider<GetReport, GetReport, GetReport>
    with $Provider<GetReport> {
  const GetReportProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getReportProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getReportHash();

  @$internal
  @override
  $ProviderElement<GetReport> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetReport create(Ref ref) {
    return getReport(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetReport value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetReport>(value),
    );
  }
}

String _$getReportHash() => r'51347b91d2dec24f3c5a72f20f0a392d2b12686d';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
