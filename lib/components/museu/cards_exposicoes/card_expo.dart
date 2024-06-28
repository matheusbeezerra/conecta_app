import 'package:conecta_app/models/museu/info_card_expo_museu.dart';
import 'package:flutter/material.dart';
import 'package:conecta_app/models/colors.dart';
import 'package:url_launcher/url_launcher.dart';

//Corpo dos cards

class CardExpoMuseu extends StatelessWidget {
  final DataCardExpoMuseu dataCardExpoMuseu;

  const CardExpoMuseu(this.dataCardExpoMuseu, {super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                      0, 160, 0, 0), //ESSE PADDING ABRIGA OS TEXTOS DO CARD
                  child: Column(
                      //AQUI INICIAM AS INFORMAÇÕES SOBRE AS EXPOSIÇÕES
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //COMEÇA AQUI
                              Text(
                                  dataCardExpoMuseu
                                      .nomeCardExpo, // NOME DA  EXPOSIÇÃO
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: darkGreen,
                                  )),
                              Text(
                                  dataCardExpoMuseu
                                      .dateCardExpo, //DATA DAS EXPOSICÕES
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: mediumGreen,
                                  )),
                              //HORÁRIO E LOCAL
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                child: Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined,
                                        size: 22, color: mediumGreen),
                                    const SizedBox(width: 4),
                                    Text(dataCardExpoMuseu.timeCardExpo,
                                        style: const TextStyle(
                                          fontSize: 18,
                                        )), // HORÁRIO DAS EXPOSICÕES
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                child: Row(
                                  children: [
                                    const Icon(Icons.schedule_outlined,
                                        size: 22, color: mediumGreen),
                                    const SizedBox(width: 4),
                                    Text(dataCardExpoMuseu.campusCardExpo,
                                        style: const TextStyle(
                                          fontSize: 18,
                                        )), // LOCAL DA EXPOSIÇÃO
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                child: Row(
                                  children: [
                                    const Icon(Icons.panorama_outlined,
                                        size: 22, color: mediumGreen),
                                    const SizedBox(width: 4),
                                    Text(
                                      dataCardExpoMuseu.galeriaCardExpo,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: mediumGreen,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              //ACABA AQUI
                            ],
                          ),
                        ),

                        //ABRIGA GESTUREDETECTOR PARA O MODAL
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ///INÍCIO MODAL
                              GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      // AQUI ABRE O RESUMO COM AS INFORMÇÕES SOBRE A EXPOSIÇÃO
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(22),
                                              topRight: Radius.circular(22),
                                            ),
                                          ),
                                          height: 550,
                                          width: double.infinity,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 30, 18, 20),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    dataCardExpoMuseu
                                                        .nomeCardExpo,
                                                    style: const TextStyle(
                                                      color: darkGreen,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Flexible(
                                                    //AQUI DENTRO FICA O TEXTO DO RESUMO DAS EXPOSICÕES
                                                    // height: 100,
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Text(
                                                        dataCardExpoMuseu
                                                            .resumoCardExpo, // Resumo
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            color: mediumGray),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 25, 0, 5),
                                                      child: OutlinedButton(
                                                        style: OutlinedButton
                                                            .styleFrom(
                                                          side: const BorderSide(
                                                              color:
                                                                  mediumGreen,
                                                              width:
                                                                  2.0), // Define a borda
                                                          padding: const EdgeInsets
                                                              .fromLTRB(
                                                              140,
                                                              10,
                                                              140,
                                                              10), // Define o espaçamento interno
                                                        ),
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context); // Isso vai fechar o modal
                                                        },
                                                        child: const Text(
                                                          'Entendi',
                                                          style: TextStyle(
                                                            color: mediumGreen,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      )),
                                                  // Botão para exposicão
                                                  ElevatedButton(
                                                    onPressed: () async {
                                                      final Uri url = Uri.parse(
                                                          dataCardExpoMuseu.maisInfoCardExpo);
                                                      if (await canLaunchUrl(
                                                          url)) {
                                                        await launchUrl(url);
                                                      } else {
                                                        throw 'Could not launch $url';
                                                      }
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          mediumGreen,
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          60, 10, 60, 10),
                                                    ),
                                                    child: const Text(
                                                      'Visitar página da exposição',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )),
                                        );
                                      },
                                    );
                                  },

                                  //BOTÃO SAIBA MAIS QUE PUXA O MODAL
                                  child: const Align(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    child: Text(
                                      'saiba mais',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: darkGreen,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ]),
                ),
              ]),
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
    );
  }
}
