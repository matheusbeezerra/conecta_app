import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:conecta_app/models/editora/info_livros.dart';
import 'package:conecta_app/pages/editora/info_livros_details.dart';

class LivroDetails extends StatelessWidget {
  final Livros livros;

  // ignore: use_super_parameters
  const LivroDetails(this.livros, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              livros.imageAsset,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                livros.title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Color(0xFF0F3834),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          const Divider(
            indent: 20,
            endIndent: 20,
          ), // Linha abaixo do título

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Autor: ${livros.autor}',
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 17.0, fontStyle: FontStyle.italic),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                livros.resumo,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Color(0xFF0F3834),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                livros.descricao,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),

            ElevatedButton.icon(
              onPressed: () async {
                Uri.parse(
                    livros.url); // Assuming download URL is in livros.download
                // ignore: deprecated_member_use
                if (await canLaunch(livros.url)) {
                  // ignore: deprecated_member_use
                  await launch(livros.url);
                } else {
                  // Handle case where URL cannot be launched (e.g., show a Snackbar)
                }
              },
              icon: const Icon(
                Icons.download,
                color: Colors.white,
              ),
              label: const Text(
                'Baixar em pdf',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF738379),
                shadowColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(120.0, 0, 120.0, 0),
              ),
            ),

            SizedBox(
              height: 200,
              width: 370,
              child: InfoDetails(
                numeroPaginas: livros.numeroPaginas,
                edicao: livros.edicao,
                genero: livros.genero,
                isbn: livros.isbn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}