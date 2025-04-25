import 'package:freezed_annotation/freezed_annotation.dart';

part 'consent_params.g.dart';

@JsonSerializable()
class ConsentParams {
  final String? methodName;
  final String? params;
  final String? userId;
  final String? deviceType;
  final String? deviceIdentName;
  final String? deviceIdentIP;
  final String? deviceIdentMac;

  const ConsentParams({
    this.methodName,
    this.params,
    this.userId,
    this.deviceType,
    this.deviceIdentName,
    this.deviceIdentIP,
    this.deviceIdentMac,
  });

  ConsentParams copyWith({
    String? methodName,
    String? params,
    String? userId,
    String? deviceType,
    String? deviceIdentName,
    String? deviceIdentIP,
    String? deviceIdentMac,
  }) {
    return ConsentParams(
      methodName: methodName ?? this.methodName,
      params: params ?? this.params,
      userId: userId ?? this.userId,
      deviceType: deviceType ?? this.deviceType,
      deviceIdentName: deviceIdentName ?? this.deviceIdentName,
      deviceIdentIP: deviceIdentIP ?? this.deviceIdentIP,
      deviceIdentMac: deviceIdentMac ?? this.deviceIdentMac,
    );
  }

  factory ConsentParams.fromJson(Map<String, dynamic> json) =>
      _$ConsentParamsFromJson(json);
}
