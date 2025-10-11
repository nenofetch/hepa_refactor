// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultations_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Consultations)
const consultationsProvider = ConsultationsProvider._();

final class ConsultationsProvider
    extends $AsyncNotifierProvider<Consultations, List<Consultation>> {
  const ConsultationsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'consultationsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$consultationsHash();

  @$internal
  @override
  Consultations create() => Consultations();
}

String _$consultationsHash() => r'4145c903ec08f14913dc3a7aa62d846098522877';

abstract class _$Consultations extends $AsyncNotifier<List<Consultation>> {
  FutureOr<List<Consultation>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<Consultation>>, List<Consultation>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Consultation>>, List<Consultation>>,
        AsyncValue<List<Consultation>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
