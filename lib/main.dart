// ignore_for_file: unused_import
import 'package:conecta_app/pages/editora/livros_details.dart';
import 'package:conecta_app/pages/editora/livros_list.dart';
import 'package:conecta_app/pages/editora/editora_page.dart';
import 'package:conecta_app/pages/login/login_page.dart';
import 'package:conecta_app/utils/app_routes.dart';
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
        routes: {
          AppRoutes.EDITORA_PAGE: (ctx) => const EditoraPage(),
          // AppRoutes.LIVROS_DETAILS: (ctx) => LivrosDetails(),
        },
        debugShowCheckedModeBanner: false,
    );
  }
}

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(   
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(
//           elevation: 0.0,
//       )),
//        home: const CarouselPageOne(),
//        debugShowCheckedModeBanner: false,
//     );
//   }
// }