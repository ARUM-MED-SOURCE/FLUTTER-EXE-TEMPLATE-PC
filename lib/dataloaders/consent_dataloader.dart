import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/repositories/consent_repository.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:convert';
import 'package:logging/logging.dart';

part 'consent_dataloader.g.dart';   

final logger = Logger('ConsentDataLoader');

@riverpod
class ConsentDataLoader extends AutoDisposeAsyncNotifier<WrittenConsentResponse?> {
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
        'AND',
        'Chrome',
        '172.17.200.48',
        'E0AA96DEBD0A',
      );

      logger.info('API Response: $response');
      state = AsyncValue.data(response);
    } catch (e) {
      logger.severe('Error fetching written consent: $e');
      state = AsyncValue.error(e, StackTrace.current);
      throw e;
    }
  }
}


  
  