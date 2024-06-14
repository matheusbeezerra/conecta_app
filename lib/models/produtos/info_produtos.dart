// Informações que deverão conter nos cards dos campus

import 'package:flutter/material.dart';

class DataProdutos {
  final String produto;
  final String imgProduto;
  final Widget endProduto;

  // O construtor deve ser assim:
  const DataProdutos({
    required this.produto,
    required this.imgProduto,
    required this.endProduto
  });
}
