import 'package:flutter/material.dart';
import 'package:conecta_app/models/colors.dart';

class InfoDetails extends StatelessWidget {
  final String numeroPaginas;
  final String edicao;
  final String genero;
  final String isbn;

  // ignore: use_super_parameters
  const InfoDetails({
    required this.numeroPaginas,
    required this.edicao,
    required this.genero,
    required this.isbn,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: lightGray,
                width: 2.0,
              ),
            ),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Nº de Páginas'),
                const SizedBox(height: 8,),
                const Icon(Icons.auto_awesome_motion, color: Color(0xFF738379),),
                const SizedBox(height: 8,),
                Text(numeroPaginas),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: lightGray,
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Edição'),
                const SizedBox(height: 8,),
                const Icon(Icons.menu_book, color: Color(0xFF738379),),
                const SizedBox(height: 8,),
                Text(edicao),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: lightGray,
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Gênero'),
                const SizedBox(height: 8,),
                const Icon(Icons.photo_library, color: Color(0xFF738379),),
                const SizedBox(height: 8,),
                Text(genero, textAlign: TextAlign.center,),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: lightGray,
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('ISBN'),
                const SizedBox(height: 8,),
                const Icon(Icons.view_week, color: Color(0xFF738379),),
                const SizedBox(height: 8,),
                Text(isbn),
              ],
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}