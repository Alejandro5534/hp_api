// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailHash() => r'81448f04329a016a614ca8b2a19569662fa18e81';

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

/// See also [detail].
@ProviderFor(detail)
const detailProvider = DetailFamily();

/// See also [detail].
class DetailFamily extends Family<AsyncValue<UserModel>> {
  /// See also [detail].
  const DetailFamily();

  /// See also [detail].
  DetailProvider call(
    String id,
  ) {
    return DetailProvider(
      id,
    );
  }

  @override
  DetailProvider getProviderOverride(
    covariant DetailProvider provider,
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
  String? get name => r'detailProvider';
}

/// See also [detail].
class DetailProvider extends AutoDisposeFutureProvider<UserModel> {
  /// See also [detail].
  DetailProvider(
    String id,
  ) : this._internal(
          (ref) => detail(
            ref as DetailRef,
            id,
          ),
          from: detailProvider,
          name: r'detailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailHash,
          dependencies: DetailFamily._dependencies,
          allTransitiveDependencies: DetailFamily._allTransitiveDependencies,
          id: id,
        );

  DetailProvider._internal(
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
    FutureOr<UserModel> Function(DetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DetailProvider._internal(
        (ref) => create(ref as DetailRef),
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
  AutoDisposeFutureProviderElement<UserModel> createElement() {
    return _DetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DetailRef on AutoDisposeFutureProviderRef<UserModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _DetailProviderElement extends AutoDisposeFutureProviderElement<UserModel>
    with DetailRef {
  _DetailProviderElement(super.provider);

  @override
  String get id => (origin as DetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
