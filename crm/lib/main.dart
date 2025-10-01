import 'package:flutter/material.dart';
import 'screens/registro_cliente.dart';
import 'screens/ver_clientes.dart';
import 'screens/graficas.dart';

void main() {
  runApp(const MyCRMApp());
}

class MyCRMApp extends StatelessWidget {
  const MyCRMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Storage CRM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CRMHomePage(),
    );
  }
}

class CRMHomePage extends StatefulWidget {
  const CRMHomePage({super.key});

  @override
  State<CRMHomePage> createState() => _CRMHomePageState();
}

class _CRMHomePageState extends State<CRMHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    RegistroClienteScreen(),
    VerClientesScreen(),
    GraficasScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Storage CRM"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Registrar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Clientes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Gráficas',
          ),
        ],
      ),
    );
  }
}
