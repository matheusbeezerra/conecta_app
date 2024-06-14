import 'package:conecta_app/models/data_livros.dart';
import 'package:conecta_app/models/info_livros.dart';
import 'package:conecta_app/pages/editora/livros_details.dart';
import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: livrosList.length,
      itemBuilder: (context, index) {
        final Livros livros = livrosList[index];
        return Card.outlined(
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      livros.imageAsset,
                      width: 150,
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            livros.title,
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: Color(0xFF0F3834),
                              fontWeight: FontWeight.bold,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                          Text(
                            livros.autor.toString(),
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ButtonBar(
                    children: <Widget>[
                      TextButton(
                        child: const Text('Ver Mais'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LivroDetails(livros),
                            ),
                          );
                        },
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.download),
                        label: const Text('Download'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
