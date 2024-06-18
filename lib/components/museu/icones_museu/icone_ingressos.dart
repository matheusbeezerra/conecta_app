import 'package:conecta_app/components/museu/icones_museu/content_modal_ingressos.dart';
import 'package:conecta_app/models/colors.dart';
import 'package:conecta_app/models/museu/data_icone_museu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconeIngressos extends StatelessWidget {
  const IconeIngressos({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.fromLTRB(6,0, 6,0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const ContentModalIngressos();
            },
          );
        },
        child: Column(children: [
          SvgPicture.asset(
              dataIconeMuseu[2].imageAsset,
              height: 60,
              fit: BoxFit.cover,
            ),
          
          const SizedBox(
            height: 10,
          ),
          Text(
            dataIconeMuseu[2].nomeIcone,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color:darkGray,
              fontSize: 16,
            ),
          ),
        ]),
      ),
    );
  }
}
