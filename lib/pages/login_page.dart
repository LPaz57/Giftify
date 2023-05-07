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

  String password = "";
  String email = "";

  final pathImage = "assets/images/regalos2.png";

  void login() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var response = await http.post(url, body: {
    'email': 'Mi primer post',
    'password': 'Este es el cuerpo de mi primer post',
    'userId': '1'
  });

  if (response.statusCode == 201) {
    var jsonResponse = jsonDecode(response.body);
    print('El ID del nuevo post es: ${jsonResponse['id']}');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  }

  final _textEditingController = TextEditingController();

  @override
  void dispose(){
    _textEditingController.dispose();
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
                  top: 150,
                  left: 113,
                  right: 113,
                  bottom: 525
                ),
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

                    const SizedBox(height: 12,),

                    const Text(
                      'GIFTIFY',
                      style: TextStyle(
                        color: AppColors.maintextColor,
                        fontFamily: "Panton",
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                      ),
                    )
                  ]
                ),
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
                    AppText(text: 'Correo electronico', color: AppColors.maintextColor),
      
                    const SizedBox(height: 12),
      
                    const MyTextField(hintText: "tucorreo@giftify.com"),
      
                    const SizedBox(height: 16),
      
                    AppText(
                      text: 'Contraseña',
                      color: AppColors.maintextColor
                    ),
      
                    const SizedBox(height: 12),
      
                    PasswordTextField(hintText: "mycontrasena123", onChanged: (value) {
                      setState(() {
                        password = value;
                        print(password);
                      });
                    }),
                                        
                  ]
                ),
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
                child: Column(
                  children: [
                    
                    ReusableTextButton(
                      text: 'Crear cuenta', 
                      onPressed: () {
                        Navigator.of(context).pop();
                        // Acción a realizar cuando se presiona el botón
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CreateAccount()
                          )
                        );
                      },
                    ),
      
                    //const SizedBox(height: 12),

                    ReusableElevatedButton(
                      text: 'Iniciar sesion', 
                      onPressed: (){
                        Navigator.of(context).pop();
                        // Acción a realizar cuando se presiona el botón
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()
                          )
                        );
                      }
                    )
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}