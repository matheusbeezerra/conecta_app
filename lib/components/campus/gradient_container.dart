import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  //Configurações do Container no qual ficarão os textos da tela dos Campus
                  height: 400,
                  width: 1900,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                       colors: [
            const Color(0xFF0F3834), // Cor sólida na parte superior
            const Color(0xFF0F3834).withOpacity(0.7), // Gradiente mais esfumaçado
            const Color(0xFF0F3834).withOpacity(0.5), // Gradiente ainda mais esfumaçado
            const Color(0xFF0F3834).withOpacity(0.5), // Gradiente ainda mais esfumaçado
          ],
                    ),
                  ),
                );
  }
}