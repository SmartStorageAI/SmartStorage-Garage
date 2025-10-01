import 'package:flutter/material.dart';

class RegistroClienteScreen extends StatelessWidget {
  const RegistroClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Registrar Cliente",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          TextField(decoration: const InputDecoration(labelText: 'Nombre')),
          TextField(decoration: const InputDecoration(labelText: 'Teléfono')),
          TextField(decoration: const InputDecoration(labelText: 'Email')),
          TextField(decoration: const InputDecoration(labelText: 'Dirección')),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Lógica para registrar cliente
            },
            child: const Text("Registrar Cliente"),
          ),
        ],
      ),
    );
  }
}
