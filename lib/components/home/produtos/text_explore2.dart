import 'package:conecta_app/models/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TextExplorePossibilidades extends StatelessWidget {
  const TextExplorePossibilidades({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCustomText("Explore Possibilidades", SectionTitle.textStyle,),
        _buildCustomText("Conheça todos os produtos Fundaj", SecondarySectionTitle.textStyle),
      ],
    );
  }

  Widget _buildCustomText(String text, TextStyle style) {
    return Text(
      text,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
      style: style,
    );
  }
}
