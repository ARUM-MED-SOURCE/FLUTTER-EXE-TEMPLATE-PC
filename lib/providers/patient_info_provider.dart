import 'package:flutter_exe/constants/api_pc_config.dart';
import 'package:flutter_exe/constants/key.dart';
import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/patient_info_response.dart';
import 'package:flutter_exe/providers/consent_list_provider.dart';
import 'package:flutter_exe/providers/hospital_section_provider.dart';
import 'package:flutter_exe/providers/secure_storage.dart';
import 'package:flutter_exe/repositories/consent/patientinfo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final logger = Logger();

final patientInfoProvider =
    StateNotifierProvider<PatientInfoStateNotifier, ConsentListBase>((ref) {
  final repository = ref.watch(patientInfoRepositoryProvider);
  return PatientInfoStateNotifier(repository: repository, ref: ref);
});

class PatientInfoStateNotifier
    extends ConsentListProvider<PatientInfoResultData, PatientInfoRepository> {
  final Ref ref;

  PatientInfoStateNotifier({
    required super.repository,
    required this.ref,
  });

  Future<void> getData() async {
    final secureStorage = ref.read(secureStorageProvider);
    final userId = await secureStorage.read(key: AppKey.userId);
    final userPassword = await secureStorage.read(key: AppKey.userPassword);

    // if(userId == null || userId == '') return;
    // if(userPassword == null || userPassword == '') return;

    final hospitalSection = ref.read(hospitalSectionProvider);
    logger.i(hospitalSection.label);
    await getList(
        methodName: hospitalSection.methodName,
        userId: '1',
        userPassword: '1',
        deviceType: ApiPcConfig.browserType,
        deviceIdentIP: ApiPcConfig.ipAddress,
        deviceIdentName: ApiPcConfig.searchType,
        deviceIdentMac: ApiPcConfig.deviceId);
  }
}
