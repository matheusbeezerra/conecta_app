import 'package:conecta_app/pages/carousel_page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    home: CarouselPageTwo(),
  ));
}

class CarouselPageTwo extends StatelessWidget {
  const CarouselPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SvgPicture.asset(
                'assets/svg/logo.svg',
                fit: BoxFit.contain,
                height: 200,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.0),
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Center(
                        child: Text(
                          'Seja bem-vindo ao Conecta Fundaj, o aplicativo que torna você uma parte da Fundação Joaquim Nabuco.',
                          textAlign: TextAlign.center,
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
                                builder: (context) =>
                                    const CarouselPageThree()),
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
