import 'package:conecta_app/models/colors.dart'; 
import 'package:flutter/material.dart';

class ContentModalInformacoes extends StatelessWidget {
  const ContentModalInformacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
            child: Column(
              children: [
                const Text(
                  "Informacoes:",
                  style: TextStyle(
                    color: darkGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "• R\$ 6,00 (inteira) e R\$3,00 (meia).\n",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
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
                        "• Pagamento somente em espécie na bilheteria.\n",
                        style: TextStyle(
                          color: darkGray,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(mediumGreen),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(40, 10, 40, 10))),
                    onPressed: () {
                      Navigator.pop(context); // Isso vai fechar o BottomSheet
                    },
                    child: const Text(
                      'Entendi',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
