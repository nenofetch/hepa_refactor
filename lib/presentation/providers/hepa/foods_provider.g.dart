// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foods_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Foods)
const foodsProvider = FoodsProvider._();

final class FoodsProvider extends $AsyncNotifierProvider<Foods, List<Food>> {
  const FoodsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'foodsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$foodsHash();

  @$internal
  @override
  Foods create() => Foods();
}

String _$foodsHash() => r'f731acbab55a247d69cae350a23e80b204ff9e10';

abstract class _$Foods extends $AsyncNotifier<List<Food>> {
  FutureOr<List<Food>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Food>>, List<Food>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Food>>, List<Food>>,
        AsyncValue<List<Food>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
