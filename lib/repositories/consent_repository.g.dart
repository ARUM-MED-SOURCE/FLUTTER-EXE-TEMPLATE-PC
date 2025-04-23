// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _ConsentRepository implements ConsentRepository {
  _ConsentRepository(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<PrescriptionConsentResponse> getPrescriptionConsentData(
    String methodName,
    String params,
    String userId,
    String deviceType,
    String deviceIdentName,
    String deviceIdentIP,
    String deviceIdentMac,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
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
    final _options = _setStreamType<PrescriptionConsentResponse>(Options(
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
    late PrescriptionConsentResponse _value;
    try {
      _value = PrescriptionConsentResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<WrittenConsentResponse> getWrittenConsentData(
    String methodName,
    String params,
    String userId,
    String deviceType,
    String deviceIdentName,
    String deviceIdentIP,
    String deviceIdentMac,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
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
    final _options = _setStreamType<WrittenConsentResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
        .compose(
          _dio.options,
          '/ConsentSvc.aspx',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late WrittenConsentResponse _value;
    try {
      _value = WrittenConsentResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<SearchConsentResponse> getSearchConsentData(
    String methodName,
    String params,
    String userId,
    String deviceType,
    String deviceIdentName,
    String deviceIdentIP,
    String deviceIdentMac,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
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
    final _options = _setStreamType<SearchConsentResponse>(Options(
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
    late SearchConsentResponse _value;
    try {
      _value = SearchConsentResponse.fromJson(_result.data!);
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

String _$consentRepositoryHash() => r'e90557dac3c92787ba0d5d534c9ffb8405defe64';

/// See also [consentRepository].
@ProviderFor(consentRepository)
final consentRepositoryProvider =
    AutoDisposeProvider<ConsentRepository>.internal(
  consentRepository,
  name: r'consentRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$consentRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ConsentRepositoryRef = AutoDisposeProviderRef<ConsentRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
