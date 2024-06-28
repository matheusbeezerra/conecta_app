import 'package:conecta_app/components/entendi_button.dart';
import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';

class ContentModalContatoDifor extends StatelessWidget {
  const ContentModalContatoDifor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      //height: 650,
      width: double.infinity,
      child: const Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(8,20, 8, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Fale com a Difor:",
                  style: TextStyle(
                    color: darkGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "• E-mail: ",
                              style: TextStyle(
                                color: mediumGreen,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "eipp@fundaj.gov.br",
                              style: TextStyle(
                                color: darkGray,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "• Instagram: ",
                              style: TextStyle(
                                color: mediumGreen,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "@escolaeipp",
                              style: TextStyle(
                                color: darkGray,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "• Facebook: ",
                              style: TextStyle(
                                color: mediumGreen,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "facebook.com/escolaipp",
                              style: TextStyle(
                                color: darkGray,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "• Contato: ",
                              style: TextStyle(
                                color: mediumGreen,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "(81) 3073-6705",
                              style: TextStyle(
                                color: darkGray,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Endereço: ",
                              style: TextStyle(
                                color: mediumGreen,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Rua Henrique Dias, 609 - Ed. Ulysses Pernambucano - Derby; 52010-100;\nRecife / PE - Fundação Joaquim Nabuco",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: darkGray,
                            fontSize: 18,
                          ),
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.pin_drop_outlined,color: mediumGreen,),
                        Text(
                          "Campus Derby",
                          textAlign: TextAlign.center,
                           style: TextStyle(
                                color: mediumGreen,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                          ),
                        ),
                          ],
                        ),
                        SizedBox(height:40),
                        Center(child: EntendiButton()),
                      ],
                    ),
                  ),
                 
               
              ],
            ),
          ),
        ),
       
    );
  }
}
