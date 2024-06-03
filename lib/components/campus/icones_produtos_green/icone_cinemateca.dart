import 'package:conecta_app/models/campus/data_icone_campus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Iconecinemateca extends StatelessWidget {
  const Iconecinemateca({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(children: [
        SizedBox(
          height: 60,
          width: 60,
          child: SvgPicture.asset(
            dataIconeCampus[4].imageAsset,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          dataIconeCampus[4].nomeProduto,
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
