import 'package:flutter/material.dart';

class Tela1Screen extends StatefulWidget {
  const Tela1Screen({super.key});

  @override
  State<Tela1Screen> createState() => _Tela1ScreenState();
}

class _Tela1ScreenState extends State<Tela1Screen> {
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
          const Text("Tela 1", style: TextStyle(fontSize: 28)),
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
