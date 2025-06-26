// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmr_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Bmrs)
const bmrsProvider = BmrsProvider._();

final class BmrsProvider extends $AsyncNotifierProvider<Bmrs, BMR?> {
  const BmrsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'bmrsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$bmrsHash();

  @$internal
  @override
  Bmrs create() => Bmrs();
}

String _$bmrsHash() => r'4e84d3386dda9f41d49b0d26791312b0ee37fdd7';

abstract class _$Bmrs extends $AsyncNotifier<BMR?> {
  FutureOr<BMR?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<BMR?>, BMR?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<BMR?>, BMR?>,
        AsyncValue<BMR?>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
