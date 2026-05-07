import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/tela1_screen.dart';
import 'screens/tela2_screen.dart';
import 'screens/tela3_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tutorial06",
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int paginaAtual = 0;

  final List<Widget> telas = const [
    HomeScreen(),
    Tela1Screen(),
    Tela2Screen(),
    Tela3Screen(),
  ];

  void trocarTela(int index) {
    setState(() {
      paginaAtual = index;
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tutorial06")),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Menu", style: TextStyle(fontSize: 24)),
            ),
            ListTile(title: const Text(("Home")), onTap: () => trocarTela(0)),
            ListTile(title: const Text(("Tela1")), onTap: () => trocarTela(1)),
            ListTile(title: const Text(("Tela2")), onTap: () => trocarTela(2)),
            ListTile(title: const Text(("Tela3")), onTap: () => trocarTela(3)),
          ],
        ),
      ),
      body: telas[paginaAtual],
    );
  }
}
