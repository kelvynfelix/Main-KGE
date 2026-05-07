import 'package:flutter/material.dart';
import 'model/filme_model.dart';
import 'package:list_view/database.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Filme> filmes = Database.getFilmes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CineFlutter"),
          backgroundColor: Colors.blueAccent,
        ),

        body: ListView.builder(
          itemCount: filmes.length,
          itemBuilder: (context, index) {
            final filme = filmes[index];
            final corNota = filme.imdb >= 8.5
                ? Colors.amber
                : Colors.grey.shade500;
            return ListTile(
              leading: Icon(Icons.movie, color: Colors.blue),
              title: Text(filme.titulo),
              subtitle: Text("Ano: ${filme.anoLancamento}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: corNota, size: 18),
                  Text(filme.imdb.toString()),
                ],
              ),
              onTap: () {
                print("Clicou em ${filme.titulo}");
              },
              onLongPress: () {
                // Ação executada ao segurar o botão
                print("O filme ${filme.titulo} foi pressionado e segurado!");
              },
            );
          },
        ),
      ),
    );
  }
}
