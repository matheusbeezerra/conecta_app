import 'package:conecta_app/components/home/produtos/item_produtos.dart';
import 'package:conecta_app/models/produtos/data_produtos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Cria um grid para os ícones que levam  aos produtos da Fundaj
//os ícones são customizados em ItemProdutoFundaj

class ProdutosFundaj extends StatelessWidget {
  const ProdutosFundaj({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 0.82, // Adicione padding
            shrinkWrap: true,
            children: dataProdutos.map((prod) {
              return ItemProdutoFundaj(prod);
            }).toList(),
          ),
        );
  }
}
