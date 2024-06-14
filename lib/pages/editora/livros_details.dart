import 'package:conecta_app/models/info_livros.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LivroDetails extends StatelessWidget {
  final Livros livros;

  const LivroDetails(this.livros, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: SingleChildScrollView( // Wrap the content with SingleChildScrollView
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              livros.imageAsset,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                livros.title,
                textAlign: TextAlign.left,
                style: const TextStyle(color:Color(0xFF0F3834), fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(horizontal: 16.0), // Adjust margins as needed
              width: 350, 
            ), //Linha abaixo do titulo 
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  livros.autor.toString(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
                ),
              ),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  livros.resumo,
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Color(0xFF0F3834), fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                livros.descricao,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}