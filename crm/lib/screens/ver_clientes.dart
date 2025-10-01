import 'package:flutter/material.dart';
import '../widgets/cliente_card.dart';

class VerClientesScreen extends StatelessWidget {
  const VerClientesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ClienteCard(
          nombre: "Juan Pérez",
          contenedor: "Bodega A1",
          membresia: "Anual",
          pago: "Pagado",
          temperatura: 25,
          humedad: 60,
        ),
        ClienteCard(
          nombre: "María López",
          contenedor: "Bodega B2",
          membresia: "Mensual",
          pago: "Pendiente",
          temperatura: 22,
          humedad: 55,
        ),
      ],
    );
  }
}
