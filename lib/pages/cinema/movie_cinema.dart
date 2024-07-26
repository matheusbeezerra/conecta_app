import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';

class MoviePageScreen extends StatelessWidget {
  final String movieName;
  final List<String> derbySessions;
  final List<String> museuSessions;
  final List<String> portoSessions;
  final String category;

  const MoviePageScreen({
    super.key,
    required this.movieName,
    required this.derbySessions,
    required this.museuSessions,
    required this.portoSessions,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    List<String> currentSessions = [];

    if (category == 'Derby') {
      currentSessions = derbySessions;
    } else if (category == 'Museu') {
      currentSessions = museuSessions;
    } else if (category == 'Porto') {
      currentSessions = portoSessions;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(movieName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/svg/filme_1.jpeg',
                width: 400,
                height: 400,
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2020',
                        style: TextStyle(
                          color: Color.fromARGB(255, 26, 77, 28),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        '160min',
                        style: TextStyle(
                          color: Color.fromARGB(255, 26, 77, 28),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Class. +18',
                        style: TextStyle(
                          color: Color.fromARGB(255, 26, 77, 28),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Pandora Filmes',
                        style: TextStyle(
                          color: Color.fromARGB(255, 26, 77, 28),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Sinopse',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                '$movieName Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Sessões',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: currentSessions
                    .map((session) => Expanded(
                          child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  backgroundColor:
                                      lightGray, // Define a cor do texto
                                  side: const BorderSide(
                                      color: darkGreen), // Define a borda
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                ),
                                child: Text(
                                  session,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: darkGreen
                                  ),
                                ),
                              )),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Preços',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Terça:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'R\$5 (preço único)',
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Quarta:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'R\$7 (meia) e R\$14 (inteira)',
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Quinta a Domingo:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'R\$7 (meia) e R\$14 (inteira)',
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Especiais:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Mostra a Cinemateca é Brasileira: gratuito',
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Sessão Escola:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'gratuito',
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Ingressos para sessões do Porto podem ser adquiridos online no Sympla',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
