import 'package:flutter/material.dart';
import 'presentation/pages/login_page.dart';
import 'presentation/pages/units_page.dart';

void main() {
  runApp(const SmartStorageApp());
}

class SmartStorageApp extends StatelessWidget {
  const SmartStorageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartStorage Garage',
      theme: ThemeData(
          useMaterial3: true, colorSchemeSeed: const Color(0xFF0057B7)),
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginPage(),
        '/units': (_) => const UnitsPage(),
      },
    );
  }
}
