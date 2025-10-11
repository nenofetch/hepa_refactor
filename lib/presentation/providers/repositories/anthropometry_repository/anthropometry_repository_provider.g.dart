// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anthropometry_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
