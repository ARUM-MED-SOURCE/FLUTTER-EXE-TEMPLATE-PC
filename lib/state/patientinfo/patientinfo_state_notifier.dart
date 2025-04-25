Future<void> getData() async {
  state = state.copyWith(isLoading: true);

  try {
    final response = await _repository.getList(
      methodName: 'getPatientInfoList',
      params: '',
      userId: 'test',
      deviceType: 'A',
      deviceIdentName: 'test',
      deviceIdentIP: 'test',
      deviceIdentMac: 'test',
    );

    if (response.resultCode == '0') {
      state = state.copyWith(
        isLoading: false,
        patientInfoList: response.result.list,
        totalCount: response.result.totalCount,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        error: response.resultMsg,
      );
    }
  } catch (e) {
    state = state.copyWith(
      isLoading: false,
      error: e.toString(),
    );
  }
} 