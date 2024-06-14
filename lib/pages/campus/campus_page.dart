
import 'package:conecta_app/components/campus/gradient_container.dart';
import 'package:conecta_app/models/info_card_campus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class CampusPage extends StatelessWidget {
  final DataCardCampus dataCampus;

  const CampusPage(this.dataCampus, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff0F3834),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(0, 82, 14, 14),
      ),
      body: SingleChildScrollView(
        // child: Center(
        //   child: Text('Campus Fundaj ${dataCampus.campus}'),
        // ),
        child: Column(
          children: [
            Stack(children: [
              Container(
                // AQUI VAI SÓ A IMAGEM NO CONTAINER
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        dataCampus.imageAsset), // Use AssetImage here
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const GradientContainer(),
              // Conteúdo acima do Container
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 160, 0, 0),
                        // NOME DO CAMPUS
                        child: Text(dataCampus.campus,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 42,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                    //ENDEREÇO DO CAMPUS
                    Text(dataCampus.end,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: OutlinedButton.icon(
                          //Rota do botão
                          onPressed: () async {
                            final url = Uri.parse(
                                'geo:0,0?q=${Uri.encodeFull(dataCampus.end)}'); // Use geo: scheme for map apps
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Não foi possível abrir o mapa';
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 18,
                            ),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            padding: const EdgeInsets.fromLTRB(38, 8, 38, 8),
                          ),
                          icon: const Icon(Icons.map,
                              size: 22, color: Colors.white),
                          label: const Text("Como chegar",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),

                    //DESCRIÇÃO SOBRE O CAMPUS
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 20),
                      child: Text(dataCampus.textoDescritivo,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          )),
                    ),
                    const Text("Aqui você encontra: ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),

                    ///AQUI VAI UMA LINHA COM OS ITENS DE cardCampus.produtos
                    // ... dentro da widget CampusPage ...

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Centralizes horizontally
                        crossAxisAlignment:
                            CrossAxisAlignment.center, // Centralizes vertically
                        children: [
                          // Exiba os ícones dinamicamente
                          for (final produto in dataCampus.produtos)
                            SizedBox(
                              // Ajusta a altura de cada ícone
                              height:
                                  200, // Altura desejada para todos os ícones
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 20, 4, 20),
                                child: produto,
                              ),
                            ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
