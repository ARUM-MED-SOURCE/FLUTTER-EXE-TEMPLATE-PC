import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_exe/api/dio/dio.dart';
import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/written_consent_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'consent_list_repository.dart';

part 'written_consent_repository.g.dart';

@RestApi()
abstract class WrittenConsentRepository implements ConsentListRepository<WrittenConsentData> {
  factory WrittenConsentRepository(Dio dio, {String? baseUrl}) =
      _WrittenConsentRepository;

  @override
  @POST('/ConsentSvc.aspx')
  @FormUrlEncoded()
  Future<ConsentList<WrittenConsentData>> getList({
    @Field('methodName') String? methodName,
    @Field('params') String? params,
    @Field('userId') String? userId,
    @Field('deviceType') String? deviceType,
    @Field('deviceIdentName') String? deviceIdentName,
    @Field('deviceIdentIP') String? deviceIdentIP,
    @Field('deviceIdentMac') String? deviceIdentMac,
  });
}

@riverpod
WrittenConsentRepository writtenConsentRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  dio.interceptors.add(InterceptorsWrapper(
    onResponse: (response, handler) {
      if (response.data is String) {
        response.data = json.decode(response.data as String);
      }
      return handler.next(response);
    },
  ));
  return WrittenConsentRepository(dio);
}
