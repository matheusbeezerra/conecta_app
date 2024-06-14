import 'package:conecta_app/models/colors.dart';
import 'package:flutter/material.dart';

class ContentModalContato extends StatelessWidget {
  const ContentModalContato({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: double.infinity,
      child:   Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
          child: Column(
            children: [
              const Text(
                "Contato:",
                style: TextStyle(
                  color: darkGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
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
              const Padding(
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
              const Padding(
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
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(mediumGreen),
              padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(40, 10, 40, 10))
              ),
                    onPressed: () {
            Navigator.pop(context); // Isso vai fechar o BottomSheet
                    },
                    child: const Text('Entendi', style: TextStyle(color:Colors.white, fontSize: 18),),
                  ),
          ),  ],
            
          )),
    );
  }
}