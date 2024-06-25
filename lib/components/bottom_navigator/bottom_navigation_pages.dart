import 'package:conecta_app/models/colors.dart';
import 'package:conecta_app/pages/home/home_page.dart';
import 'package:conecta_app/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

// Barra de navegação inferior para HOME
class BottomNavigationBarPages extends StatelessWidget {
  const BottomNavigationBarPages({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: darkGreen,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(mediumGreen, BlendMode.srcIn),
              child: SvgPicture.asset(
                'assets/svg/bottom_navigator_bar/home_outlined.svg',
                height: 26,
              ),
            ),
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () async {
                // ABRE UM LINK EXTERNO NO NAVEGADOR
                if (await canLaunchUrl(Uri.parse(
                    "https://www.gov.br/fundaj/pt-br/centrais-de-conteudo/boletim-de-noticias/mensagem-da-presidenta-1"))) {
                  await launchUrl(Uri.parse(
                      "https://www.gov.br/fundaj/pt-br/centrais-de-conteudo/boletim-de-noticias/mensagem-da-presidenta-1"));
                } else {
                  throw 'Não foi possível abrir as Notícias';
                }
              },
              child: const Icon(
                Icons.newspaper_outlined,
                size: 28,
              )),
          label: "Notícias",
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () async {
              // ABRE UM LINK EXTERNO NO NAVEGADOR
              if (await canLaunchUrl(Uri.parse("https://www.gov.br/fundaj"))) {
                await launchUrl(Uri.parse("https://www.gov.br/fundaj/"));
              } else {
                throw 'Não foi possível abrir o Portal da Fundaj';
              }
            },
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(mediumGreen, BlendMode.srcIn),
              child: SvgPicture.asset(
                'assets/svg/bottom_navigator_bar/icone_govbr.svg',
                height: 28,
              ),
            ),
          ),
          label: "Gov",
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  ),
              child: const Icon(
                Icons.logout_outlined,
                size: 28,
              )),
          label: "sair",
        ),
      ],

      unselectedItemColor: mediumGreen, // Cor do texto não selecionado
      selectedItemColor: mediumGreen, // Cor do texto selecionado
      showSelectedLabels: true, // Mostra labels selecionadas
      showUnselectedLabels: true, // Mostra labels não selecionadas
    );
  }
}
