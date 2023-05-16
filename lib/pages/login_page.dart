import 'package:flutter/material.dart';
import 'package:giftify/pages/create_account_page.dart';
import 'package:giftify/pages/home_screen.dart';
import 'package:giftify/widgets/my_text_field.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/passwd_text_field.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/buttons/text_button.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;
  String email = "";
  String password = "";

  final pathImage = "assets/images/regalos2.png";

  Future<http.Response> login(email, password) async {
    var url = Uri.parse('https://giftify-api.up.railway.app/api/v1/auth/login');
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    var data = {
      'email': email,
      'password': password,
    };
    var body = json.encode(data);
    var response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      Navigator.of(context).pop();
      // Acción a realizar cuando se presiona el botón
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      // ignore: avoid_print
      print('${response.body}, Error: ${response.statusCode}.');
    }

    return response;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(
                    top: 150, left: 113, right: 113, bottom: 525),
                width: 152,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/vector.png"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'GIFTIFY',
                        style: TextStyle(
                          color: AppColors.maintextColor,
                          fontFamily: "Panton",
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                      )
                    ]),
              ),

              Container(
                width: 327,
                //color: Colors.blue,
                margin: const EdgeInsets.only(
                  top: 330,
                  left: 24,
                  right: 24,
                  bottom: 260,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                          text: 'Correo electrónico',
                          color: AppColors.maintextColor),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: 327,
                        height: 40,
                        child: TextField(
                            controller: emailController,
                            style:
                                const TextStyle(color: AppColors.maintextColor),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.textFieldBackground,
                              hintText: "tucorreo@giftify.com",
                              hintStyle: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: AppColors.textColor2),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: AppColors.mainColor,
                                  width: 1.5,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: AppColors.mainColor,
                                  width: 1.5,
                                ),
                              ),
                            ),
                            textAlign: TextAlign.justify,
                            textAlignVertical: TextAlignVertical.bottom,
                            onChanged: (value) {
                              setState(() {
                                email = value;
                              });
                            }),
                      ),
                      const SizedBox(height: 16),
                      AppText(
                          text: 'Contraseña', color: AppColors.maintextColor),
                      const SizedBox(height: 12),
                      TextField(
                        style: const TextStyle(color: AppColors.maintextColor),
                        controller: passwordController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.textFieldBackground,
                          hintText: "micontraseña123",
                          hintStyle:
                              const TextStyle(color: AppColors.textColor2),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: AppColors.mainColor,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: AppColors.mainColor,
                              width: 1.5,
                            ),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.textColor2,
                            ),
                          ),
                        ),
                        obscureText: _obscureText,
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                      ),
                    ]),
              ),

              //const SizedBox(height: 80),

              Container(
                width: 327,
                margin: const EdgeInsets.only(
                  top: 570,
                  left: 24,
                  right: 24,
                  bottom: 100,
                ),
                child: Column(children: [
                  ReusableTextButton(
                    text: 'Crear cuenta',
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Acción a realizar cuando se presiona el botón
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccount()));
                    },
                  ),

                  //const SizedBox(height: 12),

                  ReusableElevatedButton(
                      text: 'Iniciar sesión',
                      onPressed: () {
                        login(email, password);
                      })
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
