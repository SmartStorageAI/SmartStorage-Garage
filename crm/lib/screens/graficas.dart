import 'package:flutter/material.dart';

class GraficasScreen extends StatelessWidget {
  const GraficasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(16),
        height: 300,
        color: Colors.grey[200],
        child: const Center(child: Text("Aquí irán las gráficas de sensores")),
      ),
    );
  }
}
