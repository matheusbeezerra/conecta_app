import 'package:conecta_app/components/difor/content_modal_contato_difor.dart';
import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconeContatoDifor extends StatelessWidget {
  const IconeContatoDifor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const ContentModalContatoDifor();
            },
          );
        },
        child: Column(children: [
          SvgPicture.asset(
            "assets/svg/icones_difor/icone_contato.svg",
            height: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Contato",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: darkGray,
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );
  }
}
