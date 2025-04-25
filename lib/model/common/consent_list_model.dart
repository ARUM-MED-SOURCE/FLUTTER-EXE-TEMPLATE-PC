import 'package:json_annotation/json_annotation.dart';

part 'consent_list_model.g.dart';

abstract class ConsentListBase {}

class ConsentListError extends ConsentListBase {
  final String message;

  ConsentListError({
    required this.message,
  });
}

class ConsentListLoading extends ConsentListBase {}

@JsonSerializable(genericArgumentFactories: true)
class ConsentList<T> extends ConsentListBase {
  final List<T> data;

  ConsentList({
    required this.data,
  });

  ConsentList copyWith({
    List<T>? data,
  }) {
    return ConsentList<T>(
      data: data ?? this.data,
    );
  }

  factory ConsentList.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ConsentListFromJson(json, fromJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class ConsentListResponse<T> {
  @JsonKey(name: 'RESULT_CODE')
  final String resultCode;
  
  @JsonKey(name: 'RESULT_DATA')
  final List<T> resultData;
  
  @JsonKey(name: 'ERROR_CODE')
  final String errorCode;
  
  @JsonKey(name: 'ERROR_MESSAGE')
  final String errorMessage;

  ConsentListResponse({
    required this.resultCode,
    required this.resultData,
    required this.errorCode,
    required this.errorMessage,
  });

  ConsentListResponse copyWith({
    String? resultCode,
    List<T>? resultData,
    String? errorCode,
    String? errorMessage,
  }) {
    return ConsentListResponse<T>(
      resultCode: resultCode ?? this.resultCode,
      resultData: resultData ?? this.resultData,
      errorCode: errorCode ?? this.errorCode,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  factory ConsentListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ConsentListResponseFromJson(json, fromJsonT);

  factory ConsentListResponse.empty() => ConsentListResponse<T>(
    resultCode: '0',
    resultData: [],
    errorCode: '0',
    errorMessage: '',
  );
}
