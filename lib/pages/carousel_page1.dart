import 'dart:async';
import 'package:conecta_app/pages/carousel_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    home: CarouselPageOne(),
  ));
}

class CarouselPageOne extends StatefulWidget {
  const CarouselPageOne({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CarouselPageOneState createState() => _CarouselPageOneState();
}

class _CarouselPageOneState extends State<CarouselPageOne> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CarouselPageTwo()),
      );
    });
  }

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
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Text(
                      'Desenvolvido pela Fundação Joaquim Nabuco',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color.fromARGB(255, 26, 77, 28),
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
