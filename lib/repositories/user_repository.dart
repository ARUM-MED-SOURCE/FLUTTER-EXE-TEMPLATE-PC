import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_exe/api/dio/dio.dart';
import 'package:flutter_exe/model/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart';

part 'user_repository.g.dart';

final logger = Logger();

@RestApi()
abstract class UserRepository {
  factory UserRepository(Dio dio, {String baseUrl}) = _UserRepository;

  @POST('/')
  @FormUrlEncoded()
  Future<LoginResponse> login(
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
UserRepository userRepository(UserRepositoryRef ref) {
  final dio = ref.watch(dioClientProvider);
  dio.interceptors.add(InterceptorsWrapper(
    onResponse: (response, handler) {
      logger.d('API Response: ${response.data}');
      if (response.data is String) {
        try {
          response.data = json.decode(response.data as String);
          logger.d('Decoded Response: ${response.data}');
        } catch (e) {
          logger.e('Failed to decode response: $e');
        }
      }
      return handler.next(response);
    },
    onError: (error, handler) {
      logger.e('API Error: ${error.message}', error: error, stackTrace: error.stackTrace);
      return handler.next(error);
    },
  ));
  return UserRepository(dio);
}
