// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:inclass_act03/main.dart';

void main() {
  testWidgets('shows the personalized sound lab controls', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TactileDeckApp());

    expect(find.text('SCAN'), findsOneWidget);
    expect(find.text('PULSE'), findsOneWidget);
    expect(find.text('CHARGE'), findsOneWidget);
    expect(find.text('EJECT'), findsOneWidget);
    expect(find.text('65%', skipOffstage: false), findsOneWidget);
    expect(find.text('Power Calibration: 65%'), findsOneWidget);
  });

  testWidgets('theme toggle rebuilds the app shell', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TactileDeckApp());

    expect(find.byIcon(Icons.light_mode), findsOneWidget);

    await tester.tap(find.byTooltip('Toggle Theme'));
    await tester.pump();

    expect(find.byIcon(Icons.dark_mode), findsOneWidget);
  });
}
