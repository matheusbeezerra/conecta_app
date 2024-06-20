import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:conecta_app/components/difor/content_modal_difor.dart';
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
          switch (produtosFundaj.produto) {
            case 'Formação':
              _showFormacaoBottomSheet(context);
              break;
            case 'PIBIC':
              _launchURL(context, 'https://www.gov.br/fundaj/pt-br/composicao/dipes-1/pibic');
              break;
            case 'Cinemateca':
              _launchURL(context, 'https://cinematecapernambucana.com.br/');
              break;
            case 'Pesquisa\nEscolar':
              _launchURL(context, 'https://pesquisaescolar.fundaj.gov.br/pt-br/');
              break;
            case 'Villa\nDigital':
              _launchURL(context, 'https://villadigital.fundaj.gov.br/');
              break;
            default:
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

  // Função para mostrar o Bottom Sheet de Formação
  void _showFormacaoBottomSheet(BuildContext context) {
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
                  child: SingleChildScrollView(
                    child: ContentModalDifor(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Função para tentar lançar o URL
  void _launchURL(BuildContext context, String url) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    launcher.canLaunch(url).then((canLaunch) {
      if (canLaunch) {
        launcher.launch(url);
      } else {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Não foi possível abrir $url'),
          ),
        );
      }
    }).catchError((error) {
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('Erro ao abrir $url: $error'),
        ),
      );
    });
  }
}
