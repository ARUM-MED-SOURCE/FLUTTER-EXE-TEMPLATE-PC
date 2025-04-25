import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/repositories/consent_repository.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_exe/constants/api_constants.dart';
import 'dart:convert';
import 'package:logging/logging.dart';

part 'written_consent_dataloader.g.dart';

final logger = Logger('WrittenConsentDataLoader');

@riverpod
class WrittenConsentDataLoader
    extends AutoDisposeAsyncNotifier<WrittenConsentResponse?> {
  @override
  Future<WrittenConsentResponse?> build() async => null;

  Future<void> getWrittenConsent({
    required String userId,
    required String userPassword,
    required String patientCode,
    required String startDate,
    required String endDate,
  }) async {
    state = const AsyncValue.loading();
    
    final consentRepository = ref.read(consentRepositoryProvider);

    final data = {
      "UserId": userId,
      "UserPassword": userPassword,
      "patientCode": patientCode,
      "startDate": startDate,
      "endDate": endDate,
    };

    try {
      final response = await consentRepository.getWrittenConsentData(
        'GetConsents',
        json.encode(data),
        userId,
        ApiConstants.searchType,
        ApiConstants.browserType,
        ApiConstants.ipAddress,
        ApiConstants.deviceId,
      );

      state = AsyncValue.data(response);
    } catch (e) {
      logger.severe('Error fetching written consent: $e');
      state = AsyncValue.error(e, StackTrace.current);
      rethrow;
    }
  }
} 