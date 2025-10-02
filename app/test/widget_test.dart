import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_smart_storage/main.dart';

void main() {
  testWidgets('app builds and shows MaterialApp', (tester) async {
    await tester.pumpWidget(const SmartStorageApp());
    await tester.pumpAndSettle();
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
