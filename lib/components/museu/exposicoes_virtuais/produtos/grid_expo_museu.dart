import 'package:conecta_app/components/museu/exposicoes_virtuais/produtos/item_expo_museu.dart';
import 'package:conecta_app/models/museu/data_expo_museu.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


// Cria um grid para os ícones que levam  as exposições do museu
// os ícones são customizados em ItemExpoMuseu

class GridExpoMuseu extends StatelessWidget {
  const GridExpoMuseu({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: GridView.count(
        crossAxisCount: 2,
       mainAxisSpacing: 4,
        crossAxisSpacing: 2,
        childAspectRatio: 1, // Adicione padding
        shrinkWrap: true,
        children: dataExpoMuseu.map((expo) {
          return ItemExpoMuseu(expo);
        }).toList(),
      ),
    );
  }
}