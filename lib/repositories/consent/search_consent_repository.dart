import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_exe/api/dio/dio.dart';
import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/search_consent_data.dart';
import 'package:flutter_exe/repositories/consent/consent_list_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_consent_repository.g.dart';

@RestApi()
abstract class SearchConsentRepository implements ConsentListRepository<SearchConsentData> {
  factory SearchConsentRepository(Dio dio, {String? baseUrl}) =
      _SearchConsentRepository;

  @override
  @POST('/HospitalSvc.aspx')
  @FormUrlEncoded()
  Future<ConsentList<SearchConsentData>> getList({
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
SearchConsentRepository searchConsentRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  dio.interceptors.add(InterceptorsWrapper(
    onResponse: (response, handler) {
      if (response.data is String) {
        response.data = json.decode(response.data as String);
      }
      return handler.next(response);
    },
  ));
  return SearchConsentRepository(dio);
}
