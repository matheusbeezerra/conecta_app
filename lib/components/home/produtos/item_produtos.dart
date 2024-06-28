import 'package:conecta_app/models/colors.dart';
import 'package:conecta_app/models/info_produtos.dart';
import 'package:flutter/material.dart';
//Customização do corpo dos icones da área de Produtos Fundaj

class ItemProdutoFundaj extends StatelessWidget {
  final DataProdutos produtosFundaj;

  const ItemProdutoFundaj(this.produtosFundaj, {super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        // tudo
        children: [
          Container(
            // pra imagem
            margin: const EdgeInsets.all(2),
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    width: 2,
                    color: lightGray,
                  )
                ),
            child: Image.asset(produtosFundaj.imgProduto),
          ),
          Text(produtosFundaj.produto,
              style: const TextStyle(fontSize: 14, color: darkGray)),
        ],
      ),
    );
  }
}
