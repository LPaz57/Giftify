import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';

class ModalDeletePayment extends StatefulWidget {
  const ModalDeletePayment({super.key});

  @override
  State<ModalDeletePayment> createState() => _ModalDeletePayment();
}

class _ModalDeletePayment extends State<ModalDeletePayment> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: const BoxDecoration(
        color: AppColors.modalColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.close, color: AppColors.maintextColor,),
                onPressed: () {
                Navigator.pop(context);
                },
              ),
              SizedBox(width: 20,),
              AppLargeText(text: 'Deseas eliminar la tarjeta?', size: 16,),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(text: "Eliminar esta información no afectará su historial de compras. Esta acción no puede deshacerse.",)
            ],
          ),

          SizedBox(height: 12,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableElevatedButton(
                text: 'Cancelar', 
                onPressed: (){}, 
                color: AppColors.buttonBackground3,
                width: 155,
              ),

              ReusableElevatedButton(
                text: 'Eliminar', 
                onPressed: (){}, 
                //color: AppColors.buttonBackground3,
                width: 155,
              ),
            ],
          )
          
        ]
      ),
    );
  }
}