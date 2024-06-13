import 'package:conecta_app/pages/campus/campus_page.dart';
import 'package:flutter/material.dart';
import 'package:conecta_app/models/campus/info_card_campus.dart';
import 'package:conecta_app/models/colors.dart';

//Corpo dos cards + navegação para a pagina correspondente

class CardCampus extends StatelessWidget {
  final DataCardCampus cardCampus;

  const CardCampus(this.cardCampus, {super.key});

  void _selectCampus(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return CampusPage(cardCampus);

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: InkWell( //Aqui é feita a navegação
        onTap: () => _selectCampus(context),
        borderRadius: BorderRadius.circular(26),
        splashColor: darkGray,
        child: Stack(children: <Widget>[
          Container(
            // AQUI VAI SÓ A IMAGEM NO CONTAINER
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(26),
              image: DecorationImage(
                image: AssetImage(cardCampus.imageAsset), // Use AssetImage here
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            // AQUI VAI SÓ O GRADIENTE COM OS NOMES
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(26),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black
                      .withOpacity(0.9), // Cor do gradiente (com transparência)
                  Colors.transparent, // cor transparente
                  Colors.black
                      .withOpacity(0.9) // Cor transparente na parte inferior
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(cardCampus.campus,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),

                    const Spacer(), // Preenche espaço para que o texto de cardCampus.local vá para o final do card Container

                    Row(children: [
                      const Icon(Icons.location_on_outlined,
                          size: 22, color: Colors.white),
                      Text(cardCampus.local,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ]),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
