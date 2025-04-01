import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_exe/api/dio/dio.dart';
import 'dart:convert';
part 'consent_repository.g.dart';

@RestApi()
abstract class ConsentRepository {
  factory ConsentRepository(Dio dio, {String? baseUrl}) = _ConsentRepository;

  @POST('/ConsentSvc.aspx')
  @FormUrlEncoded()
  Future<WrittenConsentResponse> getWrittenConsentData(
    @Field('methodName') String methodName,
    @Field('params') String params,
    @Field('userId') String userId,
    @Field('deviceType') String deviceType,
    @Field('deviceIdentName') String deviceIdentName,
    @Field('deviceIdentIP') String deviceIdentIP,
    @Field('deviceIdentMac') String deviceIdentMac,
  );
}

@riverpod
ConsentRepository consentRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  dio.interceptors.add(InterceptorsWrapper(
    onResponse: (response, handler) {
      if (response.data is String) {
        response.data = json.decode(response.data as String);
      }
      return handler.next(response);
    },
  ));
  return ConsentRepository(dio);
}

