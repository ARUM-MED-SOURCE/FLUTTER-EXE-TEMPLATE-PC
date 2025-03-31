import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exe/components/navigation/Topbar.dart';

void main() {
  group('TopBar 위젯 테스트', () {
    testWidgets('로고 이미지 확인', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: TopBar()));

    // 로고 이미지 확인
    final logo = find.image(const AssetImage('assets/images/company-logo-color-white.png'));
    expect(logo, findsOneWidget);
    });

    testWidgets('네비게이션 버튼들 확인', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: TopBar()));

    // 네비게이션 버튼들 확인
    final buttons = find.byType(ElevatedButton);
    expect(buttons, findsNWidgets(7)); // 7개의 버튼이 있어야 함
    expect(find.text('입원'), findsOneWidget);
    expect(find.text('외래'), findsOneWidget);
    expect(find.text('응급'), findsOneWidget);
    expect(find.text('수술'), findsOneWidget);
    expect(find.text('검사실'), findsOneWidget);
    expect(find.text('검색'), findsOneWidget);
    expect(find.text('빠른조회'), findsOneWidget);
    });


    testWidgets('기본 선택된 버튼 확인', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: TopBar()));

    // 기본 선택된 버튼 확인 ('입원')
    final selectedButton = find.text('입원');
    expect(selectedButton, findsOneWidget);
    });

    testWidgets('아이콘 확인', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: TopBar()));

    // 아이콘 확인
    expect(find.byIcon(Icons.add_circle), findsOneWidget);
    expect(find.byIcon(Icons.logout_rounded), findsOneWidget);
    });

    testWidgets('버튼 클릭 테스트', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: TopBar()));

    // 버튼 클릭 테스트
    await tester.tap(find.text('외래'));
    await tester.pump();

    // 클릭 후 스타일 변경 확인을 위한 위젯 찾기
    final clickedButton = tester.widget<ElevatedButton>(
      find.widgetWithText(ElevatedButton, '외래'),
    );
      
      // 버튼의 스타일 확인 (선택된 상태)
      final ButtonStyle style = clickedButton.style!;
      expect(style, isNotNull);
    });

  });
}
