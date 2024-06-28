import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class IconeEditaisDifor extends StatelessWidget {
  const IconeEditaisDifor({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
      child: GestureDetector(
        onTap: () async {
          final Uri url = Uri.parse("https://www.gov.br/fundaj/pt-br/composicao/difor/editais");
          if (!await launchUrl(url)) {
            // Em caso de erro, ele sobe a snackbar avisando que não poderá abrir o url
            scaffoldMessenger.showSnackBar(
              SnackBar(
                content: Text('Não foi possível abrir $url'),
              ),
            );
          }
        },
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/svg/icones_difor/icone_editais.svg",
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Editais",
              textAlign: TextAlign.center,
              style: TextStyle(
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
