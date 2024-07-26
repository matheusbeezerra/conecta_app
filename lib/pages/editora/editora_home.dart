<<<<<<< HEAD
//import 'package:conecta_app/components/editora/editora_capa.dart';
//import 'package:conecta_app/pages/editora/livros_list.dart';
import 'package:conecta_app/pages/editora/book_list.dart';
=======
import 'package:conecta_app/components/bottom_navigator/bottom_navigation_pages.dart';
import 'package:conecta_app/pages/editora/livros_list.dart';
>>>>>>> b5ee5007b84aaf8295e2dbd7ad04c1ae5c8ba5a5
import 'package:conecta_app/pages/editora/editora_capa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class EditoraPage extends StatelessWidget {
  const EditoraPage({super.key});

  @override
<<<<<<< HEAD
  Widget  build(BuildContext context) {
=======
  Widget build(BuildContext context) {
>>>>>>> b5ee5007b84aaf8295e2dbd7ad04c1ae5c8ba5a5
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            stretchTriggerOffset: 400.0,
            expandedHeight: 100.0,
            toolbarHeight: 100.0,
            title: Padding(
              padding: const EdgeInsets.all(0.0),
              child: SvgPicture.asset(
<<<<<<< HEAD
                'assets/svg/Editora/nameEditora.svg',
                height: 40,
                fit: BoxFit.cover,
              ),

=======
                'assets/svg/Editora/editora_massangana.svg',
                height: 40,
                fit: BoxFit.cover,
              ),
>>>>>>> b5ee5007b84aaf8295e2dbd7ad04c1ae5c8ba5a5
            ),
            pinned: false,
            flexibleSpace: const FlexibleSpaceBar(
              background: EditoraCapa(),
            ),
          ),
          SliverToBoxAdapter(
<<<<<<< HEAD
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 75.0), // Adicionando margem à direita do primeiro texto
              child: Text(
                'Lançamentos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                  color: Color(0xFF01241B),
                ),
              ),
            ),
            InkWell(
              onTap: () => launchUrl(Uri.parse('https://www.gov.br/fundaj/pt-br/composicao/dimeca-1/editora-teste')),
              // mouseCursor: WidgetStateMouseCursor.clickable,
              child: const Text(
                'Ir para página da Editora',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),

          SizedBox(
            height: MediaQuery.of(context).size.height -200,
            child: const BookList(),
            ), 
        ],
      ),
    ),
        ],
      ),
    );
  }
}





=======
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            right: 110), // Adicionando margem à direita do primeiro texto
                        child: Text(
                          'Lançamentos',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                            color: Color(0xFF01241B),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => launchUrl(Uri.parse(
                            'https://www.gov.br/fundaj/pt-br/composicao/dimeca-1/editora-teste')),
                        // mouseCursor: WidgetStateMouseCursor.clickable,
                        child: const Text(
                          'Visitar Portal',
                          style: TextStyle(
                            color: Color(0xFF738379),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //   const SizedBox(
                //   child: ListWidget(), // cards
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 275,
                  child: const BookList(), // cards
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar:
          const SizedBox(height: 80, child: BottomNavigationBarPages()),
    );
  }
}
>>>>>>> b5ee5007b84aaf8295e2dbd7ad04c1ae5c8ba5a5
