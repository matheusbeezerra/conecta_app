import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final Function()? onTap;

  const Button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
          color:darkGreen,
          borderRadius: BorderRadius.circular(50)),
        child: const Center(
          child: Text('Acessar',
          style:TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            ),
          ), 
        ),
      ),
    );
  }
}