import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/repositories/consent_repository.dart';
import 'package:flutter_exe/model/writtenscription_consent_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_exe/constants/api_constants.dart';
import 'dart:convert';
import 'package:logging/logging.dart';

part 'search_consent_dataloader.g.dart';

final logger = Logger('SearchConsentDataLoader');

@riverpod
class SearchConsentDataLoader
    extends AutoDisposeAsyncNotifier<WrittenConsentResponse?> {
  @override
  Future<WrittenConsentResponse?> build() async => null;

  Future<void> getSearchConsent({
    required String userId,
    required String userPassword,
  }) async {
    state = const AsyncValue.loading();

    final consentRepository = ref.read(consentRepositoryProvider);

    final data = {
      "UserId": userId,
      "UserPassword": userPassword,
    };

    try {
      final response = await consentRepository.getSearchConsentData(
        'GetDocList',
        json.encode(data),
        userId,
        ApiConstants.searchType,
        ApiConstants.browserType,
        ApiConstants.ipAddress,
        ApiConstants.deviceId,
      );
      print("############################");
      state = AsyncValue.data(response);
    } catch (e) {
      logger.severe('Error fetching written consent: $e');
      state = AsyncValue.error(e, StackTrace.current);
      throw e;
    }
  }
}