import 'package:conecta_app/components/difor/content_modal_difor.dart';
import 'package:flutter/material.dart';
import 'package:conecta_app/models/produtos/info_produtos.dart';
import 'package:conecta_app/models/colors.dart';

class ItemProdutoFundaj extends StatelessWidget {
  final DataProdutos produtosFundaj;

  const ItemProdutoFundaj(this.produtosFundaj, {super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: InkWell(
        onTap: () {
          // Verifica se o item clicado é o de 'Formação'
          if (produtosFundaj.produto == 'Formação') {
            // Mostra o bottom sheet quando o item de 'Formação' é clicado
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                  height: 300,
                  width: double.infinity,
                  child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 18, 20),
                      child: Column(
                        children: [
                          Text(
                            "DIFOR - Diretoria de Formação ",
                            style: TextStyle(
                              color: darkGreen,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Flexible(
                            //AQUI DENTRO FICA O TEXTO DO RESUMO DAS EXPOSICÕES
                            // height: 100,
                            child: SingleChildScrollView(
                              child: ContentModalDifor(),
                            ),
                          ),
                        ],
                      )),
                );
              },
            );
          } else {
            // Navega para a página correspondente ao produto clicado
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => produtosFundaj.endProduto,
              ),
            );
          }
        },
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(2),
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 2,
                  color: lightGray,
                ),
              ),
              child: Image.asset(produtosFundaj.imgProduto),
            ),
            Text(
              produtosFundaj.produto,
              style: const TextStyle(fontSize: 14, color: darkGray),
            ),
          ],
        ),
      ),
    );
  }
}
