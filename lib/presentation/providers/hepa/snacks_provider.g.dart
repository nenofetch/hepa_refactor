// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snacks_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Snacks)
const snacksProvider = SnacksProvider._();

final class SnacksProvider extends $AsyncNotifierProvider<Snacks, List<Snack>> {
  const SnacksProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'snacksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$snacksHash();

  @$internal
  @override
  Snacks create() => Snacks();
}

String _$snacksHash() => r'a81864fd12d09200b91d93fb2adeba603c5fc8c1';

abstract class _$Snacks extends $AsyncNotifier<List<Snack>> {
  FutureOr<List<Snack>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Snack>>, List<Snack>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<Snack>>, List<Snack>>,
        AsyncValue<List<Snack>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
