import 'package:flutter/material.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';

class CreditCard extends StatelessWidget {

  final String pathImage = 'assets/images/tarjeta.png';
  final String pathImage2 = 'assets/images/wave.png';
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 312,
          height: 174,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pathImage),
              fit: BoxFit.contain
            )
          ),
        ),
        Container(
          width: 312,
          height: 174,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pathImage2),
              fit: BoxFit.contain
            )
          ),
        ),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 34),
              child: Row(
                children: [
                  AppText(text: 'Número de la tarjeta', size: 10,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 34),
              child: Row(
                children: [
                  AppLargeText(text: '• • • •  • • • •  • • • •  1234', size: 20,),
                ],
              ),
            ),

             Padding(
              padding: const EdgeInsets.only(top: 20, left: 34, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(text: 'Titular de la tarjeta', size: 10,),
                  AppText(text: 'Vence', size: 10,),
                ],
              ),
            ),

             Padding(
              padding: const EdgeInsets.only(left: 34, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(text: 'Gwen D. Miller', size: 14, weight: FontWeight.w500,),
                  AppLargeText(text: '10/24', size: 14, weight: FontWeight.w500,),
                ],
              ),
            ),

          ],
        )
        
      ],
    );
  }
}