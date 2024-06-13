// Informações que deverão conter nos cards dos campus

import 'package:flutter/material.dart';

class DataCardCampus {
  final String indice;
  final String campus;
  final String rota;
  final String imageAsset;
  final String local;
  final String end;
  final List<Widget> produtos; 
  final String textoDescritivo;
  final String comoChegar;

  // O construtor deve ser assim:
  const DataCardCampus({
    required this.indice,
    required this.campus,
    required this.rota,
    required this.imageAsset,
    required this.local,
    required this.end,
    required this.produtos,
    required this.textoDescritivo,
    required this.comoChegar,
  });
}
