import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const HomeCinema());

class HomeCinema extends StatelessWidget {
  const HomeCinema({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeCinemaPage(),
    );
  }
}

class HomeCinemaPage extends StatelessWidget {
  const HomeCinemaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Stack(
          children: [
            Image.asset(
              'assets/svg/imagem-cinema.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              left: 40,
              top: 30,
              child: SvgPicture.asset(
                'assets/svg/logo-cinema.svg',
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  SizedBox(width: 80),
                  CategoryCard(icon: Icons.pin_drop_sharp, title: 'Derby'),
                  SizedBox(width: 50),
                  CategoryCard(icon: Icons.pin_drop_sharp, title: 'Museu'),
                  SizedBox(width: 50),
                  CategoryCard(icon: Icons.pin_drop_sharp, title: 'Porto'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Text(
                'Em cartaz',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(9, (index) {
                return MovieCard(
                  title: 'Filme ${index + 1}',
                  imagePath: 'assets/svg/filme_${index + 1}.jpg',
                );
              }),
            ),
            const SizedBox(height: 30),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    _launchURL('https://cinemadafundacao.com.br/#');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 26, 77, 28),
                  ),
                  child: const Text(
                    'Acessar página do Cinema',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Icon(icon, size: 30),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const MovieCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
        child: Card(
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
