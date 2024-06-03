import 'package:conecta_app/models/campus/data_icone_campus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconeMuseu extends StatelessWidget {
  const IconeMuseu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(children: [
        SvgPicture.asset(
            dataIconeCampus[5].imageAsset,
            height: 60,
            fit: BoxFit.cover,
          ),
        const SizedBox(
          height: 12,
        ),
        Text(
          dataIconeCampus[5].nomeProduto,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ]),
    );
  }
}
