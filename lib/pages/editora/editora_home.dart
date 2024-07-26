import 'package:conecta_app/components/bottom_navigator/bottom_navigation_pages.dart';
import 'package:conecta_app/pages/editora/livros_list.dart';
import 'package:conecta_app/pages/editora/editora_capa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class EditoraPage extends StatelessWidget {
  const EditoraPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                'assets/svg/Editora/editora_massangana.svg',
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            pinned: false,
            flexibleSpace: const FlexibleSpaceBar(
              background: EditoraCapa(),
            ),
          ),
          SliverToBoxAdapter(
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
