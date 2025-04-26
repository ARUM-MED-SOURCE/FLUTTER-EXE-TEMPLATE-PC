// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_consent_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _PrescriptionConsentRepository implements PrescriptionConsentRepository {
  _PrescriptionConsentRepository(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ConsentList<PrescriptionConsentData>> getList({
    String? methodName,
    String? params,
    String? userId,
    String? deviceType,
    String? deviceIdentName,
    String? deviceIdentIP,
    String? deviceIdentMac,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'methodName': methodName,
      'params': params,
      'userId': userId,
      'deviceType': deviceType,
      'deviceIdentName': deviceIdentName,
      'deviceIdentIP': deviceIdentIP,
      'deviceIdentMac': deviceIdentMac,
    };
    _data.removeWhere((k, v) => v == null);
    final _options =
        _setStreamType<ConsentList<PrescriptionConsentData>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
            .compose(
              _dio.options,
              '/HospitalSvc.aspx',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ConsentList<PrescriptionConsentData> _value;
    try {
      _value = ConsentList<PrescriptionConsentData>.fromJson(
        _result.data!,
        (json) =>
            PrescriptionConsentData.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$prescriptionConsentRepositoryHash() =>
    r'56b19fe5f301557fce9b171545ac84c5fe451f07';

/// See also [prescriptionConsentRepository].
@ProviderFor(prescriptionConsentRepository)
final prescriptionConsentRepositoryProvider =
    AutoDisposeProvider<PrescriptionConsentRepository>.internal(
  prescriptionConsentRepository,
  name: r'prescriptionConsentRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$prescriptionConsentRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PrescriptionConsentRepositoryRef
    = AutoDisposeProviderRef<PrescriptionConsentRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
