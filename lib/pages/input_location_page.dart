import 'package:flutter/material.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/my_text_field.dart';
import 'package:giftify/widgets/buttons/text_button.dart';
import 'package:giftify/pages/enable_notification_page.dart';


class InputLocation extends StatefulWidget {
  const InputLocation({super.key});

  @override
  State<InputLocation> createState() => _InputLocation();
}

class _InputLocation extends State<InputLocation> {

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
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 24,
                right: 24
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                  text: "Ingresa la direccion de entrega",
                  weight: FontWeight.w700,
                  color: AppColors.maintextColor,
                  ),

                  const SizedBox(height: 12,),

                  const MyTextField(
                    hintText: 'Calle Burbuja 240',
                    icon: Icons.search
                  ),

                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: ReusableTextButton(
                        text: 'Guardar', 
                        weight: FontWeight.w700,
                        onPressed: (){
                          Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnableNotification()
                            )
                          );
                        },
                      ),
                    )
                  )
                ],
              ),
            )
          ]
        ),
      )
    );
  }
}