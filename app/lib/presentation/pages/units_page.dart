import 'package:flutter/material.dart';

class UnitsPage extends StatelessWidget {
  const UnitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final demo = const ['U-101', 'U-102', 'U-201'];
    return Scaffold(
      appBar: AppBar(title: const Text('Mis Unidades')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: demo.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (ctx, i) => ListTile(
          title: Text('Unidad ${demo[i]}'),
          trailing: FilledButton(
            onPressed: () => ScaffoldMessenger.of(ctx).showSnackBar(
              SnackBar(content: Text('Abrir ${demo[i]} (stub)')),
            ),
            child: const Text('Abrir'),
          ),
        ),
      ),
    );
  }
}
