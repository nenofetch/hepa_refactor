// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drinks_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Drinks)
const drinksProvider = DrinksProvider._();

final class DrinksProvider extends $AsyncNotifierProvider<Drinks, List<Drink>> {
  const DrinksProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'drinksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$drinksHash();

  @$internal
  @override
  Drinks create() => Drinks();
}

String _$drinksHash() => r'f0cd182d1c7fd497f2f7fa13dd3ea46232579616';

abstract class _$Drinks extends $AsyncNotifier<List<Drink>> {
  FutureOr<List<Drink>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Drink>>, List<Drink>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Drink>>, List<Drink>>,
        AsyncValue<List<Drink>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
