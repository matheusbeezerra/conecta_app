import 'package:conecta_app/components/entendi_button.dart';
import 'package:conecta_app/models/colors.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentModalIngressos extends StatelessWidget {
  const ContentModalIngressos({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 700,
      width: double.infinity,
      child: Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
          child: Column(
            children: [
              Text(
                "Ingressos:",
                style: TextStyle(
                  color: darkGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox( 
                height: 300,
                child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                  padding: EdgeInsets.fromLTRB(10,20, 10,30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "• R\$ 6,00 (inteira) e R\$3,00 (meia).\n",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "• Familiar (a partir de quatro pagantes da mesma família) desconto de R\$1,00 por pessoa.\n",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "• Meia-entrada para estudantes e professores universitários; pessoas a partir de 60 anos e pessoas com necessidades especiais.\n",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "• Gratuidade para professores e alunos de escolas públicas, beneﬁciários de programas sociais do Governo Federal, membros do ICOM – Conselho Internacional de Museus e crianças com até 11 anos de idade.\n",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "• Aos domingos e feriados, o acesso é gratuito para todos. \n",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "• É indispensável apresentação de documentação comprobatória para dispor dos benefícios da gratuidade, meia-entrada e ingresso.\n",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "• Pagamento somente em espécie na bilheteria.",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
               
                  ],
                ),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 22),
                child: EntendiButton())
            ],
          )),
    );
  }
}
