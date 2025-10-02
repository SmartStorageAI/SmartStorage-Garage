import 'package:flutter/material.dart';

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
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF0057B7),
      ),
      home: const Scaffold(body: Center(child: Text('Hello SmartStorage'))),
    );
  }
}
