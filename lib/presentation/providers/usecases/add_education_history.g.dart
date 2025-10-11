// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_education_history.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(addEducationHistory)
const addEducationHistoryProvider = AddEducationHistoryProvider._();

final class AddEducationHistoryProvider extends $FunctionalProvider<
    AddEducationHistory,
    AddEducationHistory,
    AddEducationHistory> with $Provider<AddEducationHistory> {
  const AddEducationHistoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addEducationHistoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addEducationHistoryHash();

  @$internal
  @override
  $ProviderElement<AddEducationHistory> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddEducationHistory create(Ref ref) {
    return addEducationHistory(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddEducationHistory value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddEducationHistory>(value),
    );
  }
}

String _$addEducationHistoryHash() =>
    r'c0b7aca1066f501fe812848d48063232b2e0d95e';
