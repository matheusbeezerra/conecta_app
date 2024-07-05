import 'package:flutter/material.dart';

class EditoraCapa extends StatelessWidget {
  const EditoraCapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/editora/imgEditora.png',
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill, //
    );
  }
}