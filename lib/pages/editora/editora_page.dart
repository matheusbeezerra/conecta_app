import 'package:conecta_app/components/editora/editora_capa.dart';
import 'package:conecta_app/pages/editora/livros_list.dart';
import 'package:flutter/material.dart';

class EditoraPage extends StatelessWidget {
  const EditoraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            iconTheme: IconThemeData(color: Colors.white),
            stretchTriggerOffset: 400.0,
            expandedHeight: 100.0,
            toolbarHeight: 100.0,
            title: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                'EDITORA \nMASSANGANA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                  color: Colors.white,
                ),
              ), //Aqui tu bota a logo
            ),
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: EditoraCapa(), // Aqui tu bota o plano de fundo
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  'Lançamentos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                    color: Color(0xFF01241B),
                  ),
                ), //Aqui tu bota a logo
              ),
                SizedBox(
                // Defina uma altura para o container que envolve o BookList
                height: MediaQuery.of(context).size.height - 200, // Ajuste a altura conforme necessário
                child: const BookList(),
              ),]
            ),
          ),
        ],
      ),
    );
  }
}
