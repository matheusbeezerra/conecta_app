
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

class HomeCinemaPage extends StatefulWidget {
  const HomeCinemaPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeCinemaPageState createState() => _HomeCinemaPageState();
}

class _HomeCinemaPageState extends State<HomeCinemaPage>
    with SingleTickerProviderStateMixin {
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
              left: 50,
              top: 30,
              child: SvgPicture.asset(
                'assets/svg/logo-cinema.svg',
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const SizedBox(height: 10),
              ],
            ),
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
