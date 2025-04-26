import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/common/conset_model.dart';

abstract class ConsentListRepository<T extends ConsentModel> {
  Future<ConsentList<T>> getList({
    String? methodName,
    String? params,
    String? userId,
    String? deviceType,
    String? deviceIdentName,
    String? deviceIdentIP,
    String? deviceIdentMac,
  });
}
