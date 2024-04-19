
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackHeader extends StatelessWidget {
  const BackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/home/header/imgBackHome1.png',
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover, //
    );
  }
}
