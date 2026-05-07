import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;
  void incrementar() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Tela Home", style: TextStyle(fontSize: 28)),
          Text("Contador: $contador", style: TextStyle(fontSize: 22)),
          ElevatedButton(
            onPressed: incrementar,
            child: const Text("Incrementar"),
          ),
        ],
      ),
    );
  }
}
