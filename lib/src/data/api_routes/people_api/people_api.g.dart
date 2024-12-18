// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchActiveUsersHash() => r'6fc399f3267bd975e7fe9adc992ea1113efe7d0f';

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

/// See also [fetchActiveUsers].
@ProviderFor(fetchActiveUsers)
const fetchActiveUsersProvider = FetchActiveUsersFamily();

/// See also [fetchActiveUsers].
class FetchActiveUsersFamily extends Family<AsyncValue<List<UserModel>>> {
  /// See also [fetchActiveUsers].
  const FetchActiveUsersFamily();

  /// See also [fetchActiveUsers].
  FetchActiveUsersProvider call({
    int pageNo = 1,
    int limit = 10,
  }) {
    return FetchActiveUsersProvider(
      pageNo: pageNo,
      limit: limit,
    );
  }

  @override
  FetchActiveUsersProvider getProviderOverride(
    covariant FetchActiveUsersProvider provider,
  ) {
    return call(
      pageNo: provider.pageNo,
      limit: provider.limit,
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
  String? get name => r'fetchActiveUsersProvider';
}

/// See also [fetchActiveUsers].
class FetchActiveUsersProvider
    extends AutoDisposeFutureProvider<List<UserModel>> {
  /// See also [fetchActiveUsers].
  FetchActiveUsersProvider({
    int pageNo = 1,
    int limit = 10,
  }) : this._internal(
          (ref) => fetchActiveUsers(
            ref as FetchActiveUsersRef,
            pageNo: pageNo,
            limit: limit,
          ),
          from: fetchActiveUsersProvider,
          name: r'fetchActiveUsersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchActiveUsersHash,
          dependencies: FetchActiveUsersFamily._dependencies,
          allTransitiveDependencies:
              FetchActiveUsersFamily._allTransitiveDependencies,
          pageNo: pageNo,
          limit: limit,
        );

  FetchActiveUsersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pageNo,
    required this.limit,
  }) : super.internal();

  final int pageNo;
  final int limit;

  @override
  Override overrideWith(
    FutureOr<List<UserModel>> Function(FetchActiveUsersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchActiveUsersProvider._internal(
        (ref) => create(ref as FetchActiveUsersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pageNo: pageNo,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<UserModel>> createElement() {
    return _FetchActiveUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchActiveUsersProvider &&
        other.pageNo == pageNo &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pageNo.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchActiveUsersRef on AutoDisposeFutureProviderRef<List<UserModel>> {
  /// The parameter `pageNo` of this provider.
  int get pageNo;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _FetchActiveUsersProviderElement
    extends AutoDisposeFutureProviderElement<List<UserModel>>
    with FetchActiveUsersRef {
  _FetchActiveUsersProviderElement(super.provider);

  @override
  int get pageNo => (origin as FetchActiveUsersProvider).pageNo;
  @override
  int get limit => (origin as FetchActiveUsersProvider).limit;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
