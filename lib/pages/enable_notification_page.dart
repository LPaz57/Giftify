import 'package:flutter/material.dart';
import 'package:giftify/pages/home_page.dart';
import 'package:giftify/pages/home_screen.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/my_text_field.dart';
import 'package:giftify/widgets/buttons/text_button.dart';
import 'package:giftify/widgets/buttons/text_button.dart';

class EnableNotification extends StatefulWidget {
  const EnableNotification({super.key});

  @override
  State<EnableNotification> createState() => _EnableNotification();
}

class _EnableNotification extends State<EnableNotification> {

  final pathImage = "assets/images/regalos2.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back))
          ),
          elevation: 0,
      ),

      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //color: Colors.blue,
              width: 258,
              height: 258,
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(
                top: 80,
                //left: 50
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/delivery_bro.png'),
                )
              ),
            ),

            const SizedBox(height: 45,),

            Container(
              width: 327,
              height: 148,
              //color: Colors.blue,
              margin: const EdgeInsets.only(
                left: 24,
                right: 24
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          AppLargeText(text: 'Conoce', size: 20,),
                          AppLargeText(text: ' siempre', size: 20, color: AppColors.textColor1,),
                          AppLargeText(text: ' el', size: 20,)
                        ],
                      ),

                      Row(
                        children: [
                          AppLargeText(text: 'estado de tu pedido', size: 20,)
                        ],
                      ),

                      const SizedBox(height: 4,),

                      Column(
                        children: [
                          AppText(text: 'Las notificaciones se utilizan para proporcionar actualizaciones sobre tu pedido. Puedes cambiar esto más tarde en la sección de configuración de tu perfil')
                        ],
                      )
                    ],
                  ),
                ]
              ),
            ),

            const SizedBox(height: 20,),

            ReusableElevatedButton(
              text: 'Activar notificaciones', 
              onPressed: (){
                
              }
            ),

            const SizedBox(height: 5,),

            ReusableElevatedButton(
              text: 'Saltar por ahora', 
              color: AppColors.buttonBackground2,
              onPressed: (){
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen()
                  )
                );
              }
            )
          ]
        ),
      )
    );
  }
}