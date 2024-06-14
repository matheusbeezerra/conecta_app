import 'package:conecta_app/models/museu/info_card_expo_museu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:conecta_app/models/colors.dart';
import 'package:flutter/widgets.dart';

//Corpo dos cards

class CardExpoMuseu extends StatelessWidget {
  final DataCardExpoMuseu dataCardExpoMuseu;

  const CardExpoMuseu(this.dataCardExpoMuseu, {super.key});

  // void _selectCampus(BuildContext context) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (_) {
  //         return CampusPage(dataCardExpoMuseu);

  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: InkWell(
        //Aqui é feita a navegação
        // onTap: () => _selectCampus(context),
        borderRadius: BorderRadius.circular(26),
        splashColor: darkGray,
        child: Stack(children: <Widget>[
          Container(
            // AQUI VAI SÓ O GRADIENTE COM OS NOMES
            
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Spacer(), // Preenche espaço para que o texto de cardCampus.local vá para o final do card Container

                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("NOME COMPLETO DA EXPOSIÇÃO",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: darkGreen,
                              )),
                          Text("22 OUT > 27 NOV",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: mediumGreen,
                              )),
                        Row(
                          children: [
                            Text("10 às 16h"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Fundaj Apipucos"),
                          ], 
                        ),
                        Text("Galeria Waldemar Valente"),
                      ]),
                    ),
                  ]),
            ),
          ),
          Container(
            height: 165,
            // AQUI VAI SÓ A IMAGEM NO CONTAINER
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              image: DecorationImage(
                image: AssetImage(
                    dataCardExpoMuseu.bannerCardExpo), // Use AssetImage here
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
