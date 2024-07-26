import 'package:flutter/material.dart';

class EditoraCapa extends StatelessWidget {
  const EditoraCapa({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return const Scaffold(
      body: SingleChildScrollView(
        child: Text('data teste'),
      ),
=======
    return Image.asset(
      'assets/editora/imgEditora.png',
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill, //
>>>>>>> b5ee5007b84aaf8295e2dbd7ad04c1ae5c8ba5a5
    );
  }
}