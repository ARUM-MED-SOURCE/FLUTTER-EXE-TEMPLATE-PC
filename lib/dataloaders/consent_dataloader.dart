import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/model/prescription_consent_data.dart';
import 'package:flutter_exe/repositories/consent_repository.dart';

part 'consent_dataloader.g.dart';   

@riverpod
Future<PrescriptionConsentData> consentDataLoader(ConsentDataLoaderRef ref) async {
  final consentRepository = ref.read(consentRepositoryProvider);
  final data = {
    "UserId": 'userId',
    "UserPassword": 'userPw',
    "patientCode": 'patientCode',
    "startDate": 'startDate',
    "endDate": 'endDate',
  };

  try {
    final response = await consentRepository.getPrescriptionConsentData(
      'GetConsents',
      json.encode(data),
      'userId',
      'AND',
      'Chrome',
      '172.17.200.48',
      'E0AA96DEBD0A',
    );

    logger.d('API Response: $response');
    return response;
  } catch (e) {
    logger.e('Error: $e');
    throw e;
  }
}


  
  