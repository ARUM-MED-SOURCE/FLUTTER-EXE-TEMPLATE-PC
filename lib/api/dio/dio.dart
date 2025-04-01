import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';


@riverpod
Dio dioClient(DioClientRef ref) {
  return Dio(
    BaseOptions(
      baseUrl: 'http://59.11.2.207:50089',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': '*/*',
      },
    ),
  )..interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
      requestHeader: true,
      responseHeader: true,
    ));
}
