import 'package:conecta_app/models/data_livros.dart';
import 'package:conecta_app/models/info_livros.dart';
import 'package:conecta_app/pages/editora/livros_details.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                      child: Image.asset(
                        livros.imageAsset,
                        width: 150,
                      ),
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
                        child: const Text('Ver Mais',
                        style: TextStyle(color: Color(0xFF6D6F71),),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LivroDetails(livros),
                            ),
                          );
                        },
                      ),
                      Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextButton.icon(
                          //Rota do botão

                        onPressed: () async {
                          final Uri url = Uri.parse(livros.url);
                            if (!await launchUrl(url)) {
                              throw Exception('Could not launch $url');
                            }
                        },
              
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                          ),
                          icon: const Icon(Icons.download,
                              size: 22, color: Color(0xFF0F3834),),
                          label: const Text("Baixar",
                              style: TextStyle(
                                  color: Color(0xFF0F3834),
                                  fontWeight: FontWeight.bold))),
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
