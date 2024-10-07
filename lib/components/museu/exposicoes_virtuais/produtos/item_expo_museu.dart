import 'package:conecta_app/models/colors.dart';
import 'package:conecta_app/models/museu/info_expo_museu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//Customização do corpo dos ícones da área de Exposições do Museu

class ItemExpoMuseu extends StatelessWidget {
  final DataExpoMuseu expoMuseu;

  const ItemExpoMuseu(this.expoMuseu, {super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: GestureDetector(
        onTap: () async {
          // Open the link in a web browser
          if (await canLaunchUrl(Uri.parse(expoMuseu.link))) {
            await launchUrl(Uri.parse(expoMuseu.link));
          } else {
            throw 'Could not launch ${expoMuseu.link}';
          }
        },
        child: Column(
          // tudo
          children: [
            Container(
              // para imagem
              margin: const EdgeInsets.all(4),
              width: 185,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(expoMuseu.banner), // Use AssetImage here
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(expoMuseu.nomeExpo,
                style: const TextStyle(fontSize: 16, color: darkGray)),
          ],
        ),
      ),
    );
  }
}
