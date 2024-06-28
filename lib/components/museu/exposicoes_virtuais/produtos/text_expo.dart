import 'package:conecta_app/models/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TextExpoVirtual extends StatelessWidget {
  const TextExpoVirtual({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCustomText("Exposições Virtuais", SectionTitle.textStyle,), 
      ],
    );
  }

  Widget _buildCustomText(String text, TextStyle style) {
    return Text(
      text,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.start, // Ajuste o alinhamento aqui
      style: style,
    );
  }
}
