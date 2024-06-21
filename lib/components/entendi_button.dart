import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';

//Botão com texto "Entendi" para fechar o modal.
// Estilo do botão é padrão, background sólido, sem bordas.
//Pode ser utilizado em qualquer modal

class EntendiButton extends StatelessWidget {
  const EntendiButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pop(context); // Isso vai fechar o BottomSheet
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: mediumGreen,
        ),
        child:  const Padding(
          padding: EdgeInsets.fromLTRB(20, 10,20,10),
          child: Text(
            'Entendi',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  }
}