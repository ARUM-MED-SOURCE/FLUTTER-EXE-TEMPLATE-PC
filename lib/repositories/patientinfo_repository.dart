import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_exe/model/patient.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_exe/api/dio/dio.dart';

part 'patientinfo_repository.g.dart';

@RestApi()
abstract class PatientInfoRepository {
  factory PatientInfoRepository(Dio dio, {String? baseUrl}) = _PatientInfoRepository;

  @POST('/')
  @FormUrlEncoded()
  Future<List<Patient>> getPatientInfo(
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
PatientInfoRepository patientInfoRepository(PatientInfoRepositoryRef ref) {
  final dio = ref.watch(dioClientProvider);
  return PatientInfoRepository(dio);
}



