
import 'package:conecta_app/components/home/carrossel/card_campus.dart';
import 'package:conecta_app/models/data_campus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Gera um carrossel com cards que direciona para resumo e localização dos campus
//Os cards são customizados em cardsCampus

class CarrosselHeader extends StatelessWidget {
  const CarrosselHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: GestureDetector(
        onTap: () {

        },
        child: SizedBox(
          height: 380,
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 8, 0,8),
            scrollDirection: Axis.horizontal,
            itemCount: dataCampus.length,
            itemBuilder: (context, index) {
              final camp = dataCampus[index];
              return Container(
                width: 240.0,
                height: 20,
                margin: const EdgeInsets.all(8),
                child: CardCampus(camp)
                );
            },
          
          ),
        ),
      ),
    );
  }
}




