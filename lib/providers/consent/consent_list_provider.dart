import 'dart:convert';

import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/common/consent_model.dart';
import 'package:flutter_exe/repositories/consent/consent_list_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

final logger = Logger();

class ConsentListRequestParams {
  final String? methodName;
  final String? userId;
  final String? userPassword;
  final String? clnDate;
  final String? ward;
  final String? docName;
  final String? dept;
  final String? deviceType;
  final String? deviceIdentName;
  final String? deviceIdentIP;
  final String? deviceIdentMac;

  const ConsentListRequestParams({
    this.methodName,
    this.userId,
    this.userPassword,
    this.clnDate,
    this.ward,
    this.docName,
    this.dept,
    this.deviceType,
    this.deviceIdentName,
    this.deviceIdentIP,
    this.deviceIdentMac,
  });
}

class ConsentListProvider<T extends ConsentModel,
    U extends ConsentListRepository<T>> extends StateNotifier<ConsentListBase> {
  final U repository;
  ConsentListRequestParams? _lastParams;

  ConsentListProvider({
    required this.repository,
  }) : super(ConsentListInitial());

  Future<void> getList({
    String? methodName,
    String? userId,
    String? userPassword,
    String? clnDate,
    String? ward,
    String? docName,
    String? dept,
    String? deviceType,
    String? deviceIdentName,
    String? deviceIdentIP,
    String? deviceIdentMac,
  }) async {
    _lastParams = ConsentListRequestParams(
      methodName: methodName,
      userId: userId,
      userPassword: userPassword,
      clnDate: clnDate,
      ward: ward,
      docName: docName,
      dept: dept,
      deviceType: deviceType,
      deviceIdentName: deviceIdentName,
      deviceIdentIP: deviceIdentIP,
      deviceIdentMac: deviceIdentMac,
    );
    try {
      state = ConsentListLoading();

      final data = {
        "UserId": userId,
        "UserPassword": userPassword,
        "CLN_DATE": clnDate,
        "WARD": ward,
        "DOCTOR_ID": docName,
        "CLN_DEPT_CODE": dept,
      };

      logger.d('API 요청 시작: $methodName');
      logger.d('요청 데이터: $data');

      final response = await repository.getList(
        methodName: methodName,
        params: json.encode(data),
        userId: userId,
        deviceType: deviceType,
        deviceIdentName: deviceIdentName,
        deviceIdentIP: deviceIdentIP,
        deviceIdentMac: deviceIdentMac,
      );

      logger.d('API 응답: $response');

      state = response;
    } catch (e, stack) {
      logger.e('API 요청 실패', error: e, stackTrace: stack);

      String errorMessage = "데이터를 가져오지 못 했습니다.";
      if (e is DioException) {
        switch (e.type) {
          case DioExceptionType.connectionTimeout:
          case DioExceptionType.sendTimeout:
          case DioExceptionType.receiveTimeout:
            errorMessage = "서버 연결 시간이 초과되었습니다.";
            break;
          case DioExceptionType.badResponse:
            errorMessage = "서버 응답이 올바르지 않습니다.";
            break;
          case DioExceptionType.cancel:
            errorMessage = "요청이 취소되었습니다.";
            break;
          default:
            errorMessage = "네트워크 오류가 발생했습니다.";
        }
      }

      state = ConsentListError(message: errorMessage);
    }
  }

  Future<void> retry() async {
    if (_lastParams == null) return;
    await getList(
      methodName: _lastParams!.methodName,
      userId: _lastParams!.userId,
      userPassword: _lastParams!.userPassword,
      clnDate: _lastParams!.clnDate,
      ward: _lastParams!.ward,
      docName: _lastParams!.docName,
      dept: _lastParams!.dept,
      deviceType: _lastParams!.deviceType,
      deviceIdentName: _lastParams!.deviceIdentName,
      deviceIdentIP: _lastParams!.deviceIdentIP,
      deviceIdentMac: _lastParams!.deviceIdentMac,
    );
  }
}
