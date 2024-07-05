import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Text('data'),
      ),
    );
  }
}
