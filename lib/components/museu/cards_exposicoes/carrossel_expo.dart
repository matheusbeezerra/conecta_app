import 'package:conecta_app/components/museu/cards_exposicoes/card_expo.dart';
import 'package:conecta_app/models/colors.dart';
import 'package:conecta_app/models/museu/data_card_expo_museu.dart';
import 'package:flutter/material.dart';

//Gera um carrossel com cards que direciona para resumo e localização dos campus
//Os cards são customizados em cardsCampus

class CarrosselExpoMuseu extends StatelessWidget {
  const CarrosselExpoMuseu({super.key});


// Dentro da Coluna uma stack  e um expanded

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SizedBox(
        height: 530,
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(6, 8, 0, 8),
          scrollDirection: Axis.horizontal,
          itemCount: dataCardExpoMuseu.length,
          itemBuilder: (context, index) {
            final camp = dataCardExpoMuseu[index];
            return Container( 
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  width: 2,
                  color: lightGray,
                )),
                width: 300.0,
                height: 20,
                margin: const EdgeInsets.all(8),
                child: CardExpoMuseu(camp));
          },
        ),
      ),
    );
  }
}
