import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';

class ModalPago extends StatefulWidget {
  @override
  _ModalPago createState() => _ModalPago();
}

class _ModalPago extends State<ModalPago> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: const BoxDecoration(
        color: AppColors.buttonBackground2,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.close, color: AppColors.maintextColor,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                AppLargeText(text: 'Resumen', size: 16,),
                SizedBox(width: 50,)
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Container(
                    width: 21,
                    height: 21,
                    decoration: BoxDecoration(
                      color: AppColors.buttonBackground3,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(child: AppLargeText(text: '2',size: 14,)),
                  ),
                  SizedBox(width: 12,),
                  AppLargeText(text: 'Juego de velas perfumadas',size: 14,),
                  SizedBox(width: 70,),
                  AppLargeText(text: '\$600',size: 14,)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:12, left: 14),
              child: Row(
                children: [
                  Container(
                    width: 21,
                    height: 21,
                    decoration: BoxDecoration(
                      color: AppColors.buttonBackground3,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(child: AppLargeText(text: '2',size: 14,)),
                  ),
                  SizedBox(width: 12,),
                  AppLargeText(text: 'Juego de velas perfumadas',size: 14,),
                  SizedBox(width: 70,),
                  AppLargeText(text: '\$600',size: 14,)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColors.textColor4,
                      width: 1,
                      style: BorderStyle.solid
                    )
                  )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  AppLargeText(text: 'Dirección de envío',size: 14,),
                  SizedBox(width: 26,),
                  AppText(text: 'Gral. Negrete 33, Zacapu')
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12, left: 10),
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  AppLargeText(text: 'Método de pago',size: 14,),
                  SizedBox(width: 110,),
                  Row(
                    children: [
                      Image.asset('assets/images/mastercard.png'),
                      SizedBox(width: 12,),
                      AppText(text: '1234')
                    ],
                  )
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: AppColors.textColor4,
                      width: 1,
                      style: BorderStyle.solid
                    )
                  )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(text: 'Total', size: 14,),
                  AppText(text: '\$1200')
                ],
              ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableElevatedButton(
                text: 'Cancelar', 
                onPressed: (){
                  Navigator.of(context).pop();
                }, 
                color: AppColors.buttonBackground3,
                width: 155,
              ),

              ReusableElevatedButton(
                text: 'Pagar', 
                onPressed: (){}, 
                //color: AppColors.buttonBackground3,
                width: 155,
              ),
            ],
          )
          ],
        ),
      ),
    );
  }
}