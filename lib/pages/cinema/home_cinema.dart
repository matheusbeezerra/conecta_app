import 'package:conecta_app/pages/cinema/movie_cinema.dart';
import 'package:conecta_app/pages/cinema/programacao_screen.dart';
import 'package:conecta_app/pages/museu/muhne_page.dart';
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
  String _selectedCategory = 'Derby';
  AnimationController? _animationController;
  late Animation<Offset> _offsetAnimation;

  final List<String> _derbyMovies = [
    'Filme 1',
    'Filme 2',
    'Filme 3',
    'Filme 4',
    'Filme 5',
    'Filme 6',
    'Filme 7',
    'Filme 8',
    'Filme 9',
    'Filme 10',
  ];

  final List<String> _museuMovies = [];

  final List<String> _portoMovies = [
    'Filme 6',
    'Filme 7',
    'Filme 8',
  ];

  final List<String> _derbySessions = [
    '12:00',
    '14:50',
    '15:00',
    '20:40',
  ];

  final List<String> _museuSessions = [
    '14:00',
    '18:30',
    '20:40',
    '23:00',
  ];

  final List<String> _portoSessions = [
    '14:50',
    '17:00',
    '19:30',
    '22:15',
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeInOut,
    ));
    setState(() {
      _selectedCategory = 'Derby';
      _animationController!.forward(from: 0.0);
    });
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> currentMovies = [];

    if (_selectedCategory == 'Derby') {
      currentMovies = _derbyMovies;
    } else if (_selectedCategory == 'Casa Forte') {
      currentMovies = _museuMovies;
    } else if (_selectedCategory == 'Porto') {
      currentMovies = _portoMovies;
    }

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
        actions: <Widget>[
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'pagina1',
                child: Text('Sobre'),
              ),
              const PopupMenuItem<String>(
                value: 'pagina2',
                child: Text('Filmes em cartaz'),
              ),
              const PopupMenuItem<String>(
                value: 'pagina3',
                child: Text('Programação'),
              ),
              const PopupMenuItem<String>(
                value: 'pagina4',
                child: Text('Sessões especiais'),
              ),
              const PopupMenuItem<String>(
                value: 'pagina5',
                child: Text('Acessibilidade'),
              ),
              const PopupMenuItem<String>(
                value: 'pagina6',
                child: Text('Localização'),
              ),
            ],
            onSelected: (String value) {
              switch (value) {
                case 'pagina1':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MuseuPage()),
                  );
                  break;
                case 'pagina2':
                  // Implemente a navegação para a página de filmes em cartaz
                  break;
                case 'pagina3':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProgramacaoScreen()),
                  );
                  break;
                case 'pagina4':
                  // Implemente a navegação para a página de sessões especiais
                  break;
                case 'pagina5':
                  // Implemente a navegação para a página de acessibilidade
                  break;
                case 'pagina6':
                  // Implemente a navegação para a página de localização
                  break;
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CategoryCard(
                    icon: _selectedCategory == 'Derby'
                        ? Icons.place_rounded
                        : Icons.place_outlined,
                    title: 'Derby',
                    address: 'Rua do Derby, 729 - Derby',
                    isSelected: _selectedCategory == 'Derby',
                    onTap: () {
                      setState(() {
                        _selectedCategory = 'Derby';
                        _animationController!.forward(from: 0.0);
                      });
                    },
                  ),
                  CategoryCard(
                    icon: _selectedCategory == 'Casa Forte'
                        ? Icons.place_rounded
                        : Icons.place_outlined,
                    title: 'Casa Forte',
                    address: 'Av. 17 de Agosto, 2187 - Casa Forte',
                    isSelected: _selectedCategory == 'Museu',
                    onTap: () {
                      setState(() {
                        _selectedCategory = 'Museu';
                        _animationController!.forward(from: 0.0);
                      });
                    },
                  ),
                  CategoryCard(
                    icon: _selectedCategory == 'Porto'
                        ? Icons.place_rounded
                        : Icons.place_outlined,
                    title: 'Porto',
                    address: 'Av. Herculano Bandeira, 513 - Pina',
                    isSelected: _selectedCategory == 'Porto',
                    onTap: () {
                      setState(() {
                        _selectedCategory = 'Porto';
                        _animationController!.forward(from: 0.0);
                      });
                    },
                  ),
                ],
              ),
            ),
            SlideTransition(
              position: _offsetAnimation,
              child: currentMovies.isEmpty
                  ? const Center(
                      child: Text(
                        'Não há filmes disponíveis',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 12.0),
                          child: Text(
                            'Em cartaz',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        GridView.count(
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children:
                              List.generate(currentMovies.length, (index) {
                            return MovieCard(
                              imagePath: 'assets/svg/filme_${index + 1}.jpeg',
                              movieName: currentMovies[index],
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MoviePageScreen(
                                      movieName: currentMovies[index],
                                      derbySessions: _derbySessions,
                                      museuSessions: _museuSessions,
                                      portoSessions: _portoSessions,
                                      category: _selectedCategory,
                                    ),
                                  ),
                                );
                              },
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
                                backgroundColor:
                                    const Color.fromARGB(255, 26, 77, 28),
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

class CategoryCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String address;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
    required this.address,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: widget.onTap,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: [
                  Icon(
                    widget.icon,
                    size: 30,
                    color: widget.isSelected
                        ? const Color.fromARGB(255, 26, 77, 28)
                        : Colors.black,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: widget.isSelected
                          ? const Color.fromARGB(255, 26, 77, 28)
                          : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (widget.isSelected)
            Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Text(
                widget.address,
                style: const TextStyle(
                  color: Color.fromARGB(255, 26, 77, 28),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String imagePath;
  final String movieName;
  final VoidCallback onTap;

  const MovieCard(
      {super.key,
      required this.imagePath,
      required this.movieName,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 1),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
