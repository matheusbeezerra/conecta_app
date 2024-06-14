import 'package:conecta_app/pages/onboarding/carousel_page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
      )),
     home: const CarouselPageOne(),
       debugShowCheckedModeBanner: false,
    );
  }
}
