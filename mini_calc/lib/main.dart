import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final TextEditingController _n1Controller = TextEditingController();
  final TextEditingController _n2Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  @override
  void dispose() {
    _n1Controller.dispose();
    _n2Controller.dispose();
    _resultController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mini Calculadora"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _n1Controller,
                decoration: InputDecoration(
                  labelText: "Informe o valor A",
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 16),

              TextField(
                controller: _n2Controller,
                decoration: InputDecoration(
                  labelText: "Informe o valor B",
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: $_n1Controller n2: $_n2Controller",
                        );
                        String n1Tratado = _n1Controller.text.replaceAll(
                          ",",
                          ".",
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ",",
                          ".",
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) + double.parse(n2Tratado);
                          print("resultado: $resultado");
                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text("Soma"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: $_n1Controller n2: $_n2Controller",
                        );
                        String n1Tratado = _n2Controller.text.replaceAll(
                          ",",
                          ".",
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ",",
                          ".",
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) - double.parse(n2Tratado);
                          print("resultado: $resultado");
                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text("Subtração"),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 16),
              TextField(
                controller: _resultController,
                decoration: InputDecoration(
                  labelText: "Resultado",
                  prefixIcon: Icon(Icons.equalizer),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                enabled: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
