import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:conecta_app/models/info_livros.dart';
import 'package:conecta_app/pages/editora/info_livros_details.dart';

class LivroDetails extends StatelessWidget {
  final Livros livros;

  // ignore: use_super_parameters
  const LivroDetails(this.livros, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              livros.imageAsset,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                livros.title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Color(0xFF0F3834),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(), // Linha abaixo do título

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Autor: ${livros.autor}',
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 17.0, fontStyle: FontStyle.italic),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                livros.resumo,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    color: Color(0xFF0F3834),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                livros.descricao,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),

            ElevatedButton.icon(
              onPressed: () async {
                Uri.parse(
                    livros.url); // Assuming download URL is in livros.download
                // ignore: deprecated_member_use
                if (await canLaunch(livros.url)) {
                  // ignore: deprecated_member_use
                  await launch(livros.url);
                } else {
                  // Handle case where URL cannot be launched (e.g., show a Snackbar)
                }
              },
              icon: const Icon(
                Icons.download,
                color: Colors.white,
              ),
              label: const Text(
                'Baixar em pdf',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF738379),
                shadowColor: Colors.white,
                padding: const EdgeInsets.fromLTRB(130.0, 0, 130.0, 0),
              ),
            ),

            SizedBox(
              height: 200,
              child: InfoDetails(
                numeroPaginas: livros.numeroPaginas,
                edicao: livros.edicao,
                genero: livros.genero,
                isbn: livros.isbn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



















// import 'package:conecta_app/pages/editora/info_livros_details.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:conecta_app/models/info_livros.dart';

// class LivroDetails extends StatelessWidget {
//   final Livros livros;

//   const LivroDetails(this.livros, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detalhes'),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image.asset(
//               livros.imageAsset,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 livros.title,
//                 textAlign: TextAlign.left,
//                 style: const TextStyle(
//                   color: Color(0xFF0F3834),
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const Divider(), // Linha abaixo do título

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Autor: ${livros.autor}',
//                 textAlign: TextAlign.left,
//                 style: const TextStyle(
//                     fontSize: 17.0, fontStyle: FontStyle.italic),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 livros.resumo,
//                 textAlign: TextAlign.left,
//                 style: const TextStyle(
//                     color: Color(0xFF0F3834),
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 livros.descricao,
//                 textAlign: TextAlign.justify,
//                 style: const TextStyle(fontSize: 16.0),
//               ),
//             ),

//             ElevatedButton.icon(
//               onPressed: () async {
//                 final url = Uri.parse(
//                     livros.url); // Assuming download URL is in livros.download
//                 if (await canLaunchUrl(url)) {
//                   await launchUrl(url);
//                 } else {
//                   // Handle case where URL cannot be launched (e.g., show a Snackbar)
//                   print('Não foi possível abrir o link de download');
//                 }
//               },
//               icon: const Icon(
//                 Icons.download,
//                 color: Colors.white,
//               ),
//               label: const Text(
//                 'Baixar em pdf',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color(0xFF738379),
//                 shadowColor: Colors.white,
//                 padding: const EdgeInsets.fromLTRB(130.0, 0, 130.0, 0),
//               ),
//             ),
      
//           const SizedBox(
//             height: 300,
//             child: InfoDetails(Livros as Livros),
//           ),


//           ],
//         ),
//       ),
//     );
//   }
// }
