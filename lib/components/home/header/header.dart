import 'package:conecta_app/components/home/carrossel/carrossel_campus.dart';
import 'package:conecta_app/components/home/carrossel/text_explore.dart';
import 'package:conecta_app/components/home/header/back_header.dart';
import 'package:conecta_app/components/home/header/text_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      textDirection: TextDirection.ltr, // Ensures left-to-right alignment
      children: [
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            BackHeader(),
            // Ensure the inner Column uses CrossAxisAlignment.start
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextHeader(), // Assuming TextHeader has appropriate text alignment
                TextExploreCampus(), // Assuming TextExploreCampus has appropriate text alignment
                CarrosselHeader(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
