import 'package:flutter/material.dart';

class InputCampo extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;

   const InputCampo({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText, required bool isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 26, 77, 28),),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color:  Color.fromRGBO(145, 233, 116, 0.835)),
          ),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color:  Color.fromARGB(255, 166, 166, 166)),
        ),
      ),
    );
  }
}