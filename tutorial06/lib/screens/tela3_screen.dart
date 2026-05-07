import 'package:flutter/material.dart';

class Tela3Screen extends StatefulWidget {
  const Tela3Screen({super.key});

  @override
  State<Tela3Screen> createState() => _Tela3ScreenState();
}

class _Tela3ScreenState extends State<Tela3Screen> {
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
          const Text("Tela 3", style: TextStyle(fontSize: 28)),
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
