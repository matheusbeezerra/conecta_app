import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class MuhneLogo extends StatelessWidget {
  const MuhneLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/museu/muhne_logo.svg',
      height: 40,
      fit: BoxFit.cover,
    );
  }
}
