// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patientinfo_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _PatientInfoRepository implements PatientInfoRepository {
  _PatientInfoRepository(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ConsentList<PatientInfoResultData>> getList({
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
    final _options = _setStreamType<ConsentList<PatientInfoResultData>>(Options(
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
    late ConsentList<PatientInfoResultData> _value;
    try {
      _value = ConsentList<PatientInfoResultData>.fromJson(
        _result.data!,
        (json) => PatientInfoResultData.fromJson(json as Map<String, dynamic>),
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

String _$patientInfoRepositoryHash() =>
    r'35e380e65fa58468872f98c8e4255239790e4ca1';

/// See also [patientInfoRepository].
@ProviderFor(patientInfoRepository)
final patientInfoRepositoryProvider =
    AutoDisposeProvider<PatientInfoRepository>.internal(
  patientInfoRepository,
  name: r'patientInfoRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$patientInfoRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PatientInfoRepositoryRef
    = AutoDisposeProviderRef<PatientInfoRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
