
import 'package:conecta_app/components/home/carrossel/carrossel_campus.dart';
import 'package:conecta_app/components/home/carrossel/text_explore.dart';
import 'package:conecta_app/components/home/header/back_header.dart';
import 'package:conecta_app/components/home/header/text_header.dart';
import 'package:conecta_app/components/home/produtos/grid_produtos.dart';
import 'package:conecta_app/components/home/produtos/text_explore2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conecta Fundaj',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  BackHeader(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                          child: TextHeader()),
                      Padding(
                          padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                          child: TextExploreCampus()),
                      CarrosselHeader(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(24, 8, 0, 0),
                          child: TextExplorePossibilidades()),
                     Padding(
                        padding:EdgeInsets.all(4),
                        child:  ProdutosFundaj()),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextPossibilidades {
  const TextPossibilidades();
}
