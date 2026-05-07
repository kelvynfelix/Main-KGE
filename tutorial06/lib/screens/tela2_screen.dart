import 'package:flutter/material.dart';

class Tela2Screen extends StatefulWidget {
  const Tela2Screen({super.key});

  @override
  State<Tela2Screen> createState() => _Tela2ScreenState();
}

class _Tela2ScreenState extends State<Tela2Screen> {
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
          const Text("Tela 2", style: TextStyle(fontSize: 28)),
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
