import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/model/patient.dart';
import 'package:flutter_exe/repositories/patientinfo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:convert';

part 'patientinfo_dataloader.g.dart';

@riverpod
Future<List<Patient>> patientInfoLoader(PatientInfoLoaderRef ref) async {
  final repository = ref.watch(patientInfoRepositoryProvider);
  final data = {
      "UserID": 'userOd',
      "UserPassword": 'userPw',
      "CLN_DATE": 'clnDate',
      "WARD": 'ward',
      "DOCTOR_ID": 'docName',
      "CLN_DEPT_CODE": 'dept'
    };

  return repository.getPatientInfo(
    'GetInpatientSearch',
    json.encode(data),
      'userOd',
      'AND',
      'Chrome',
      '172.17.200.48',
      'E0AA96DEBD0A',
  );
}



