// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patientinfo_dataloader.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$patientInfoLoaderHash() => r'b776e6b3d87ce06999cee2c4ccf505e9c349cf5a';

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

/// See also [patientInfoLoader].
@ProviderFor(patientInfoLoader)
const patientInfoLoaderProvider = PatientInfoLoaderFamily();

/// See also [patientInfoLoader].
class PatientInfoLoaderFamily extends Family<AsyncValue<PatientInfoResponse>> {
  /// See also [patientInfoLoader].
  const PatientInfoLoaderFamily();

  /// See also [patientInfoLoader].
  PatientInfoLoaderProvider call(
    String methodName,
  ) {
    return PatientInfoLoaderProvider(
      methodName,
    );
  }

  @override
  PatientInfoLoaderProvider getProviderOverride(
    covariant PatientInfoLoaderProvider provider,
  ) {
    return call(
      provider.methodName,
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
  String? get name => r'patientInfoLoaderProvider';
}

/// See also [patientInfoLoader].
class PatientInfoLoaderProvider
    extends AutoDisposeFutureProvider<PatientInfoResponse> {
  /// See also [patientInfoLoader].
  PatientInfoLoaderProvider(
    String methodName,
  ) : this._internal(
          (ref) => patientInfoLoader(
            ref as PatientInfoLoaderRef,
            methodName,
          ),
          from: patientInfoLoaderProvider,
          name: r'patientInfoLoaderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$patientInfoLoaderHash,
          dependencies: PatientInfoLoaderFamily._dependencies,
          allTransitiveDependencies:
              PatientInfoLoaderFamily._allTransitiveDependencies,
          methodName: methodName,
        );

  PatientInfoLoaderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.methodName,
  }) : super.internal();

  final String methodName;

  @override
  Override overrideWith(
    FutureOr<PatientInfoResponse> Function(PatientInfoLoaderRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PatientInfoLoaderProvider._internal(
        (ref) => create(ref as PatientInfoLoaderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        methodName: methodName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PatientInfoResponse> createElement() {
    return _PatientInfoLoaderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PatientInfoLoaderProvider && other.methodName == methodName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, methodName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PatientInfoLoaderRef
    on AutoDisposeFutureProviderRef<PatientInfoResponse> {
  /// The parameter `methodName` of this provider.
  String get methodName;
}

class _PatientInfoLoaderProviderElement
    extends AutoDisposeFutureProviderElement<PatientInfoResponse>
    with PatientInfoLoaderRef {
  _PatientInfoLoaderProviderElement(super.provider);

  @override
  String get methodName => (origin as PatientInfoLoaderProvider).methodName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
