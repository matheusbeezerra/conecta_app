import 'package:flutter/material.dart';
import 'package:conecta_app/models/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonPageEditora extends StatelessWidget {
  const ButtonPageEditora({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () async {
                var livros;
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
        ],
      ),
    );
  }
}