import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vendas Etec"),
          backgroundColor: Colors.red.shade400,
        ),
        body: Center(child: Text("Aqui é o Body Principal")),
        backgroundColor: Colors.blue.shade200,
        drawer: Drawer(
          child: ListView(children: [Text("Opção 1"), Text("Opção 2")]),
        ),
      ),
    );
  }
}
