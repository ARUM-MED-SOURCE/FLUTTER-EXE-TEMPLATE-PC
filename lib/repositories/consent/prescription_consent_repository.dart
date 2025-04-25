import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_exe/api/dio/dio.dart';
import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'consent_list_repository.dart';

part 'prescription_consent_repository.g.dart';

@RestApi()
abstract class PrescriptionConsentRepository implements ConsentListRepository<PrescriptionConsentData> {
  factory PrescriptionConsentRepository(Dio dio, {String? baseUrl}) =
      _PrescriptionConsentRepository;

  @override
  @POST('/HospitalSvc.aspx')
  @FormUrlEncoded()
  Future<ConsentList<PrescriptionConsentData>> getList({
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
PrescriptionConsentRepository prescriptionConsentRepository(Ref ref) {
  final dio = ref.watch(dioClientProvider);
  dio.interceptors.add(InterceptorsWrapper(
    onResponse: (response, handler) {
      if (response.data is String) {
        response.data = json.decode(response.data as String);
      }
      return handler.next(response);
    },
  ));
  return PrescriptionConsentRepository(dio);
}
