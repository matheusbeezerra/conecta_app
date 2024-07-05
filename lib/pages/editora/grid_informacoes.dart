import 'package:flutter/material.dart';
import 'package:conecta_app/models/editora/info_livros.dart';

class SelectCard extends StatelessWidget {
  final Livros livros;

  // ignore: use_super_parameters
  const SelectCard(this.livros, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(livros.numeroPaginas),
            const SizedBox(height: 8),
            const Icon(
              Icons.auto_awesome_motion,
              size: 20.0,
              color: Color(0xFF0F3834),
            ),
            const SizedBox(height: 8),
            Text(livros.edicao),
            Text(livros.genero),
            Text(livros.isbn),
          ],
        ),
      ),
    );
  }
}