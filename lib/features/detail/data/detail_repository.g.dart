// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailRepositoryHash() => r'80b9049528ead0cfe3772d427fb2bd68bff61ce1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [detailRepository].
@ProviderFor(detailRepository)
const detailRepositoryProvider = DetailRepositoryFamily();

/// See also [detailRepository].
class DetailRepositoryFamily extends Family<DetailRepository> {
  /// See also [detailRepository].
  const DetailRepositoryFamily();

  /// See also [detailRepository].
  DetailRepositoryProvider call(
    String id,
  ) {
    return DetailRepositoryProvider(
      id,
    );
  }

  @override
  DetailRepositoryProvider getProviderOverride(
    covariant DetailRepositoryProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailRepositoryProvider';
}

/// See also [detailRepository].
class DetailRepositoryProvider extends AutoDisposeProvider<DetailRepository> {
  /// See also [detailRepository].
  DetailRepositoryProvider(
    String id,
  ) : this._internal(
          (ref) => detailRepository(
            ref as DetailRepositoryRef,
            id,
          ),
          from: detailRepositoryProvider,
          name: r'detailRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailRepositoryHash,
          dependencies: DetailRepositoryFamily._dependencies,
          allTransitiveDependencies:
              DetailRepositoryFamily._allTransitiveDependencies,
          id: id,
        );

  DetailRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    DetailRepository Function(DetailRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DetailRepositoryProvider._internal(
        (ref) => create(ref as DetailRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DetailRepository> createElement() {
    return _DetailRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailRepositoryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DetailRepositoryRef on AutoDisposeProviderRef<DetailRepository> {
  /// The parameter `id` of this provider.
  String get id;
}

class _DetailRepositoryProviderElement
    extends AutoDisposeProviderElement<DetailRepository>
    with DetailRepositoryRef {
  _DetailRepositoryProviderElement(super.provider);

  @override
  String get id => (origin as DetailRepositoryProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
