// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anthopometries_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Anthropometries)
const anthropometriesProvider = AnthropometriesProvider._();

final class AnthropometriesProvider
    extends $AsyncNotifierProvider<Anthropometries, Anthropometry?> {
  const AnthropometriesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'anthropometriesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$anthropometriesHash();

  @$internal
  @override
  Anthropometries create() => Anthropometries();
}

String _$anthropometriesHash() => r'190342bbc95e8d53f3894ceda6b6f1c05f0e39ed';

abstract class _$Anthropometries extends $AsyncNotifier<Anthropometry?> {
  FutureOr<Anthropometry?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Anthropometry?>, Anthropometry?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<Anthropometry?>, Anthropometry?>,
        AsyncValue<Anthropometry?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
