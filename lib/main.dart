import 'package:conecta_app/firebase_options.dart';
import 'package:conecta_app/pages/onboarding/carousel_page1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
