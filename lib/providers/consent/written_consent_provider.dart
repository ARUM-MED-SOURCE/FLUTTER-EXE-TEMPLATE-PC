import 'package:flutter_exe/constants/api_method.dart';
import 'package:flutter_exe/constants/api_pc_config.dart';
import 'package:flutter_exe/constants/key.dart';
import 'package:flutter_exe/model/common/consent_list_model.dart';
import 'package:flutter_exe/model/common/consent_model.dart';
import 'package:flutter_exe/model/written_consent_data.dart';
import 'package:flutter_exe/providers/consent/consent_list_provider.dart';
import 'package:flutter_exe/providers/secure_storage.dart';
import 'package:flutter_exe/repositories/consent/written_consent_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final logger = Logger();

final writtenConsentProvider = StateNotifierProvider<
    WrittenConsentStateNotifier,
    ConsentListBase>((ref) {
  final repository = ref.watch(writtenConsentRepositoryProvider);
  return WrittenConsentStateNotifier(
    ref: ref,
    repository: repository,
  );
});

class WrittenConsentStateNotifier
    extends ConsentListProvider<WrittenConsentData, WrittenConsentRepository> {
  final Ref ref;

  WrittenConsentStateNotifier({
    required this.ref,
    required super.repository,
  });

  Future<void> getData() async {
    try {
      state = ConsentListLoading();

      final secureStorage = ref.read(secureStorageProvider);
      // final userId = await secureStorage.read(key: AppKey.userId);

      // if (userId == null || userId == '') return;

      await getList(
        methodName: ApiMethod.writtenConsent,
        userId: "1",
        userPassword: "1",
        deviceType: ApiPcConfig.browserType,
        deviceIdentIP: ApiPcConfig.ipAddress,
        deviceIdentName: ApiPcConfig.searchType,
        deviceIdentMac: ApiPcConfig.deviceId,
      );

    } catch (e, stackTrace) {
      logger.e('Error fetching written consent data', error: e, stackTrace: stackTrace);
      state = ConsentListError(
        message: 'Error fetching written consent data: ${e.toString()}',
      );
    }
  }
} 