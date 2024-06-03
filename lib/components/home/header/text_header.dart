import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
      child: Text("Olá, \nNome Usuário ",textDirection: TextDirection.ltr,textAlign: TextAlign.left,
            style: TextStyle(fontSize:30, color:darkGreen,fontWeight: FontWeight.bold)),
    );
  }
}
