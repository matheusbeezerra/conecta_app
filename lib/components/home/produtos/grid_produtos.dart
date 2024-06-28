import 'package:conecta_app/components/home/produtos/item_produtos.dart';
import 'package:conecta_app/models/data_produtos.dart';
import 'package:conecta_app/pages/editora/editora_page.dart';
import 'package:flutter/material.dart';

// Cria um grid para os ícones que levam  aos produtos da Fundaj
//os ícones são customizados em ItemProdutoFundaj

class ProdutosFundaj extends StatelessWidget {
  const ProdutosFundaj({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        
        child: GestureDetector(
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => const EditoraPage()
        ),
      );
          },
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 0.82,
            shrinkWrap: true,
            children: dataProdutos.map((prod) {
              return ItemProdutoFundaj(prod);
            }).toList(),
          ),
        ));
  }
}
