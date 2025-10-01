import 'package:flutter/material.dart';

class ClienteCard extends StatelessWidget {
  final String nombre;
  final String contenedor;
  final String membresia;
  final String pago;
  final int temperatura;
  final int humedad;

  const ClienteCard({
    super.key,
    required this.nombre,
    required this.contenedor,
    required this.membresia,
    required this.pago,
    required this.temperatura,
    required this.humedad,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text("Contenedor: $contenedor"),
            Text("Membresía: $membresia"),
            Text("Estado de pago: $pago"),
            const SizedBox(height: 8),
            Row(
              children: [
                Text("Temp: $temperatura°C"),
                const SizedBox(width: 16),
                Text("Humedad: $humedad%"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
