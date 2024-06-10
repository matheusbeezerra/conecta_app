import 'package:conecta_app/components/museu/exposicoes_virtuais/produtos/grid_expo_museu.dart';
import 'package:conecta_app/components/museu/exposicoes_virtuais/produtos/text_expo.dart';
import 'package:conecta_app/components/museu/icones_museu/icone_como_chegar.dart';
import 'package:conecta_app/components/museu/icones_museu/icone_contato.dart';
import 'package:conecta_app/components/museu/icones_museu/icone_ingressos.dart';
import 'package:conecta_app/components/museu/muhne_header.dart';
import 'package:conecta_app/components/museu/muhne_logo.dart';
import 'package:flutter/material.dart';

class MuseuPage extends StatelessWidget {
  const MuseuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            iconTheme: IconThemeData(color: Colors.white,),
            stretchTriggerOffset: 400.0,
            expandedHeight: 100.0,
            title: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: MuhneLogo(),
            ),
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: MuhneHeader(),
              // Use BackHeader as background
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround, // Centralizes horizontally
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconeComoChegar(),
                        IconeContato(),
                        IconeIngressos(),
                        // IconeInformacoes()
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // Centralizes horizontally
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [TextExpoVirtual()]),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: ExpoMuseuGrid(),
                  ),
                  
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
