// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anthropometry_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(anthropometryRepository)
const anthropometryRepositoryProvider = AnthropometryRepositoryProvider._();

final class AnthropometryRepositoryProvider extends $FunctionalProvider<
    AnthropometryRepository,
    AnthropometryRepository,
    AnthropometryRepository> with $Provider<AnthropometryRepository> {
  const AnthropometryRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'anthropometryRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$anthropometryRepositoryHash();

  @$internal
  @override
  $ProviderElement<AnthropometryRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AnthropometryRepository create(Ref ref) {
    return anthropometryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnthropometryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnthropometryRepository>(value),
    );
  }
}

String _$anthropometryRepositoryHash() =>
    r'611106a347158f5884715380ea5c620dd932a753';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
