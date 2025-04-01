import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_exe/model/patient_info_response.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_exe/api/dio/dio.dart';
import 'dart:convert';
part 'patientinfo_repository.g.dart';

@RestApi()
abstract class PatientInfoRepository {
  factory PatientInfoRepository(Dio dio, {String? baseUrl}) = _PatientInfoRepository;

  @POST('/HospitalSvc.aspx')
  @FormUrlEncoded()
  Future<PatientInfoResponse> getPatientInfo(
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
PatientInfoRepository patientInfoRepository(Ref ref) {
   final dio = ref.watch(dioClientProvider);
  dio.interceptors.add(InterceptorsWrapper(
    onResponse: (response, handler) {
      if (response.data is String) {
        response.data = json.decode(response.data as String);
      }
      return handler.next(response);
    },
  ));
  return PatientInfoRepository(dio);
}



