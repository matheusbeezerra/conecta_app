import 'package:conecta_app/components/difor/icone_contato_difor.dart';
import 'package:conecta_app/components/difor/icone_editais_difor.dart';
import 'package:conecta_app/components/difor/icone_ava_difor.dart';
import 'package:conecta_app/components/entendi_button.dart';
import 'package:flutter/material.dart';

class ContentModalDifor extends StatelessWidget {
  const ContentModalDifor({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceAround, // Centralizes horizontally
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconeAvaDifor(),
            IconeEditaisDifor(),
            IconeContatoDifor(),

            // IconeInformacoes()
          ],
        ),
      ),
      EntendiButton()
    ]);
  }
}
