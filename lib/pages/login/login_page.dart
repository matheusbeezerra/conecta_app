import 'package:conecta_app/models/colors.dart';
import 'package:conecta_app/pages/home/home_page.dart';
import 'package:conecta_app/pages/login/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:conecta_app/components/button.dart';
import 'package:conecta_app/components/campo_input.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void signUserIn(BuildContext context) async {
      String email = usernameController.text;
      String password = passwordController.text;

      try {
        // final response = await apiService.loginUser(email, password);
        // Aqui você pode salvar o token de autenticação ou qualquer outra coisa necessária

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                const Icon(Icons.error, color: Colors.white),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Erro ao fazer login: ${e.toString()}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/logo-1.svg",
                      fit: BoxFit.contain,
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 30),
                    InputCampo(
                      controller: usernameController,
                      hintText: 'Digite seu e-mail',
                      isPassword: false,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15),
                    InputCampo(
                      controller: passwordController,
                      hintText: 'Digite sua senha',
                      isPassword: false,
                      obscureText: false,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Esqueci minha senha",
                            style: TextStyle(
                              color: Color.fromARGB(255, 5, 54, 5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Button(
                      onTap: () => signUserIn(context),
                    ),
                    const SizedBox(height: 40),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.4,
                              color: darkGreen,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'Acessar com',
                              style: TextStyle(
                                color: darkGreen,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.4,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.account_circle_rounded, size: 30),
                      label: const Text("Entrar usando minha conta Google",
                          style: TextStyle(fontSize: 16)),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: mediumGreen,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 10,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RegisterPage(key: UniqueKey())),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ainda não possui conta? Crie uma.',
                            style: TextStyle(
                              color: darkGreen,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
