import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_exe/components/main/PatientInfo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_exe/utils/dummy_data.dart';
import 'package:flutter_exe/model/patient.dart';

void main() {
  group('PatientInfo 위젯 테스트', () {
    late Widget testWidget;
    late Patient firstPatient;

    setUp(() {
      testWidget = ProviderScope(
        child: MaterialApp(
          home: Scaffold(
            body: PatientInfo(),
          ),
        ),
      );
      firstPatient = Patient.fromJson(patientData[0]);
    });

    testWidgets('헤더가 올바르게 렌더링되는지 테스트', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      expect(find.text('환자정보'), findsOneWidget);
    });

    testWidgets('환자 정보 레이블이 모두 표시되는지 테스트', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump();

      final labels = [
        '병동/병실:',
        '나이/성별:',
        '입원일:',
        '지정의:',
        '주치의:',
        '진단명:',
      ];

      for (final label in labels) {
        expect(find.textContaining(label), findsAtLeastNWidgets(1));
      }
    });

    testWidgets('첫 번째 환자의 정보가 표시되는지 테스트', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump();

      // 첫 번째 환자의 정보가 화면에 표시되는지 확인
      expect(find.textContaining(firstPatient.ward), findsAtLeastNWidgets(1));
      expect(find.textContaining(firstPatient.ageGender), findsAtLeastNWidgets(1));
      expect(find.textContaining(firstPatient.admissionDate), findsAtLeastNWidgets(1));
      expect(find.textContaining(firstPatient.doctor), findsAtLeastNWidgets(1));
      expect(find.textContaining(firstPatient.attendingDoctor), findsAtLeastNWidgets(1));
      expect(find.textContaining(firstPatient.diagnosis), findsAtLeastNWidgets(1));
    });

    testWidgets('Alert 섹션이 표시되는지 테스트', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump();

      // ALERT 레이블이 존재하는지 확인
      expect(find.text('ALERT'), findsAtLeastNWidgets(1));
      
      // 첫 번째 환자의 alert 내용이 표시되는지 확인
      expect(find.textContaining(firstPatient.alert), findsAtLeastNWidgets(1));
    });

    testWidgets('스크롤이 가능한지 테스트', (WidgetTester tester) async {
      await tester.pumpWidget(testWidget);
      await tester.pump();

      // 스크롤 가능한 위젯 찾기
      final listViewFinder = find.byType(ListView);
      expect(listViewFinder, findsOneWidget);

      // 스크롤 전 첫 번째 환자 정보가 보이는지 확인
      expect(find.textContaining(firstPatient.ward), findsAtLeastNWidgets(1));

      // 스크롤 동작 수행
      await tester.drag(listViewFinder, const Offset(0, -500));
      await tester.pumpAndSettle();

      // 스크롤이 실제로 동작했는지 확인
      // 첫 번째 환자 정보가 더 이상 보이지 않거나, 다른 환자 정보가 보이는지 확인
      final secondPatient = Patient.fromJson(patientData[1]);
      expect(find.textContaining(secondPatient.ward), findsAtLeastNWidgets(1));
    });
  });
}
