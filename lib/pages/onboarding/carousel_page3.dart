import 'package:conecta_app/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MaterialApp(
    home: CarouselPageThree(),
  ));
}

class CarouselPageThree extends StatefulWidget {
  const CarouselPageThree({super.key});

  @override
  State<CarouselPageThree> createState() => _CarouselPageThreeState();
}

class _CarouselPageThreeState extends State<CarouselPageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/svg/Onboarding2.png',
                fit: BoxFit.contain,
                height: 400,
                width: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: FractionallySizedBox(
                      widthFactor: 1.0,
                      child: Center(
                        child: Text(
                          'Explore o que há de melhor nos principais produtos da Fundaj, como museu, cinemas, editora, formação, pesquisa e muito mais!',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 26, 77, 28),
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 184, 219, 178),
                        ),
                        child: const Text(
                          'Pular',
                          style: TextStyle(color: Color.fromARGB(255, 26, 77, 28)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
