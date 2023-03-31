import 'package:flutter/material.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/pages/login_page.dart';
import 'package:giftify/widgets/buttons/text_button.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _Start();
}

class _Start extends State<Start> {

  final pathImage = "assets/images/regalos2.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.blue,
        width: double.maxFinite,
        height: double.maxFinite,
        
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(pathImage),
                  fit: BoxFit.cover
                )
              ),
            ),

            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(0, 31, 31, 31),
                    Color.fromARGB(255, 31, 31, 31),
                  ]
                )
              ),
            ),

            Container(
              //color: Colors.greenAccent,
              margin: const EdgeInsets.only(
                top: 300,
                left: 24,
                right: 24,
                bottom: 190
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "La Mayor"),
                      Row(
                        children: [
                          AppLargeText(
                            text: "Variedad", 
                            color: AppColors.textColor1
                          ),
                          AppLargeText(
                            text: " de",
                          ),
                        ]
                      ),
                      AppLargeText(text: "Regalos"),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Column(
                    children: [
                      AppText(text: "¡Prepárate para repartir felicidad! Desde cumpleaños hasta aniversarios y todo lo demás, lo tenemos cubierto.",)
                    ]
                  )
                ],
              )
            ),
            
            Container(
              //color: Colors.amber,
              height: 100,
              width: 400,
              margin: const EdgeInsets.only(
                top: 640,
                left: 24,
                right: 24,
                bottom: 42
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  ReusableTextButton(
                    text: "Ya tengo una cuenta", 
                    onPressed: (){
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()
                        )
                      );
                    }
                  ),
                  //const SizedBox(height: 12),
                  ReusableElevatedButton(
                    text: 'Comenzar',
                    onPressed: (){
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()
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
    );
  }
}