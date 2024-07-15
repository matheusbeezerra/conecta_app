import 'package:flutter/material.dart';

class ProgramacaoScreen extends StatelessWidget {
  const ProgramacaoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programação'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                height: 20,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildDayOfWeek('SEG'),
                    _buildDayOfWeek('TER'),
                    _buildDayOfWeek('QUA'),
                    _buildDayOfWeek('QUI'),
                    _buildDayOfWeek('SEX'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                height: 20,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildDate('26/07'),
                    _buildDate('27/07'),
                    _buildDate('28/07'),
                    _buildDate('29/07'),
                    _buildDate('30/07'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: Text(
                "Programação sujeita a alterações.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: Text(
                'Derby',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildMovieCard('Filme 1', ['12:00', '14:50', '20:40']),
                  _buildMovieCard('Filme 2', ['15:00', '17:30', '22:00']),
                  _buildMovieCard('Filme 3', ['13:30', '16:20', '19:10']),
                  _buildMovieCard('Filme 4', ['14:00', '18:00', '21:30']),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: Text(
                'Casa Forte',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildMovieCard('Filme 5', ['10:00', '12:30', '15:00']),
                  _buildMovieCard('Filme 6', ['11:00', '13:30', '16:00']),
                  _buildMovieCard('Filme 7', ['12:00', '14:30', '17:00']),
                  _buildMovieCard('Filme 8', ['13:00', '15:30', '18:00']),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: Text(
                'Porto',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildMovieCard('Filme 9', ['10:00', '12:30', '15:00']),
                  _buildMovieCard('Filme 10', ['11:00', '13:30', '16:00']),
                  _buildMovieCard('Filme 11', ['12:00', '14:30', '17:00']),
                  _buildMovieCard('Filme 12', ['13:00', '15:30', '18:00']),
                ],
              ),
            ),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }

  Widget _buildDayOfWeek(String dayOfWeek) {
    return Container(
      width: 80,
      alignment: Alignment.center,
      child: Text(
        dayOfWeek,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildDate(String date) {
    return Container(
      width: 80,
      alignment: Alignment.center,
      child: Text(
        date,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      ),
    );
  }

  Widget _buildMovieCard(String movieTitle, List<String> sessionTimes) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 16.0),
      child: Card(
        elevation: 4,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieTitle,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4.0),
                  const Text(
                    'Sessões:',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: sessionTimes.map((time) => Text(time)).toList(),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
