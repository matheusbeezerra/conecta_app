import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:conecta_app/models/museu/data_icone_museu.dart';
import 'package:conecta_app/models/colors.dart';

class IconeComoChegar extends StatelessWidget {
  const IconeComoChegar({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
        GlobalKey<ScaffoldMessengerState>();

    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
      child: GestureDetector(
        onTap: () async {
          final Uri url = Uri.parse(dataIconeMuseu[0].link);
          if (!await launchUrl(url)) {
            // Em caso de erro, exibe a snackbar avisando que não foi possível abrir o URL
            scaffoldMessengerKey.currentState?.showSnackBar(
              SnackBar(
                content: Text('Não foi possível abrir $url'),
              ),
            );
          }
        },
        child: Column(
          children: [
            SvgPicture.asset(
              dataIconeMuseu[0].imageAsset,
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              dataIconeMuseu[0].nomeIcone,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: darkGray,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
