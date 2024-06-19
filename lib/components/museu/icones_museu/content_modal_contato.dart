import 'package:conecta_app/components/entendi_button.dart';
import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';

class ContentModalContato extends StatelessWidget {
  const ContentModalContato({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 450,
      width: double.infinity,
      child:   Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
          child: Column(
            children: [
              Text(
                "Contato:",
                style: TextStyle(
                  color: darkGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.call_outlined,
                      color: mediumGreen,
                      size: 25,
                    ),
                    Text(
                      " (81) 3073-6385",
                      style: TextStyle(
                        color: darkGray, 
                        fontSize: 18,),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail_outlined,
                      color: mediumGreen,
                      size: 25,
                    ),
                    Text(" agendamento.muhne@fundaj.gov.br",
                      style: TextStyle(
                        color: darkGray, 
                        fontSize: 18,),)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                        "• De terça a sexta-feira: das 9h às 17h\n• Sábado e domingo: das 13h às 17h",
                      style: TextStyle(
                        color: darkGray, 
                        fontSize: 18,),)
                  ],
                ),
              ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: EntendiButton(),
          ),  ],
            
          )),
    );
  }
}