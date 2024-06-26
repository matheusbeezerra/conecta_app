import 'package:conecta_app/models/colors.dart';
import 'package:conecta_app/pages/onboarding/carousel_page3.dart';
import 'package:flutter/material.dart';

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
              child: Image.asset(
                'assets/svg/Onboarding_1_com_logo.png',
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
                              mediumGreen,
                        ),
                        child: const Text(
                          'Pular',
                          style: TextStyle(color: Colors.white),
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
