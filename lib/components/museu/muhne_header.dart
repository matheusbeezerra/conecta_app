
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MuhneHeader extends StatelessWidget {
  const MuhneHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/muhne/muhne_header.png',
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover, //
    );
  }
}
