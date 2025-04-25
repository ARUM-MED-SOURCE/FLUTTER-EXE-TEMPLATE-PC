import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/repositories/consent_repository.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_exe/constants/api_constants.dart';
import 'dart:convert';
import 'package:logging/logging.dart';

import '../model/prescription_consent_data.dart';

part 'prescription_consent_dataloader.g.dart';

final logger = Logger('PrescriptionConsentDataLoader');

@riverpod
class PrescriptionConsentDataLoader
    extends AutoDisposeAsyncNotifier<PrescriptionConsentResponse?> {
  @override
  Future<PrescriptionConsentResponse?> build() async => null;

  Future<void> getPrescriptionConsent({
    required String userId,
    required String userPassword,
  }) async {
    state = const AsyncValue.loading();
    
    final consentRepository = ref.read(consentRepositoryProvider);

    try {
      final response = await consentRepository.getPrescriptionConsentData(
        'GetUnfinishedConsentSearch',
        json.encode({
          "UserId": userId,
          "UserPassword": userPassword,
        }),
        userId,
        ApiConstants.searchType,
        ApiConstants.browserType,
        ApiConstants.ipAddress,
        ApiConstants.deviceId,
      );

      state = AsyncValue.data(response);
    } catch (e) {
      logger.severe('Error fetching prescription consent: $e');
      state = AsyncValue.error(e, StackTrace.current);
      rethrow;
    }
  }
} 