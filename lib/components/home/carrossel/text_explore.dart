import 'package:conecta_app/models/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TextExploreCampus extends StatelessWidget {
  const TextExploreCampus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCustomText("Explore nossos campus", SectionTitle.textStyle,),
        _buildCustomText("Clique em um card para saber mais", SectionSubTitle.textStyle,),
      ],
    );
  }

  Widget _buildCustomText(String text, TextStyle style) {
    return Text(
      text,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left, // Ajuste o alinhamento aqui
      style: style,
    );
  }
}
