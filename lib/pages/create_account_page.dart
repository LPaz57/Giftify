import 'package:flutter/material.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/my_text_field.dart';
import 'package:giftify/widgets/passwd_text_field.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/buttons/text_button.dart';
import 'package:giftify/pages/input_location_page.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {

  final pathImage = "assets/images/regalos2.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            //alignment: Alignment.center,
            children: [
              
              Container(
                width: 327,
                margin: const EdgeInsets.only(
                  top: 100,
                  left: 24,
                  right: 24,
                  bottom: 50,
                ),
                child: AppLargeText(
                  text: "Crear una Nueva Cuenta",
                  size: 20,
                )
              ),
      
              //const SizedBox(height: 50),
      
              Container(
                width: 327,
                margin: const EdgeInsets.only(
                  top: 0,
                  left: 24,
                  right: 24,
                  bottom: 0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: 'Nombre completo',
                      color: AppColors.maintextColor
                    ),
      
                    const SizedBox(height: 12),
      
                    const MyTextField(hintText: "Filomeno Mata"),
      
                    const SizedBox(height: 16),
      
                    AppText(
                      text: 'Correo electronico',
                      color: AppColors.maintextColor
                    ),
      
                    const SizedBox(height: 12),
      
                    const MyTextField(hintText: 'tucorreo@giftify.com'),
      
                    const SizedBox(height: 16),
      
                    AppText(
                      text: 'Contrasena',
                      color: AppColors.maintextColor
                    ),
      
                    const SizedBox(height: 12),
      
                    PasswordTextField(hintText: 'Micontrasena123')
                  ],
                )
              ),
      
              const SizedBox(height: 116),
      
              Container(
                width: 327,
                margin: const EdgeInsets.only(
                  top: 16,
                  left: 24,
                  right: 24,
                  bottom: 50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    ReusableTextButton(
                      text: 'Iniciar sesion', 
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InputLocation()
                          )
                        );
                      }
                    ),
      
                    //const SizedBox(height: 12),
      
                    ReusableElevatedButton(
                      text: 'Crear cuenta', 
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InputLocation()
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