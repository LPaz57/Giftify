import 'package:flutter/material.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/modal_delete_payment.dart';
import 'package:giftify/widgets/my_text_field.dart';
import 'package:giftify/widgets/buttons/text_button.dart';
import 'package:giftify/pages/enable_notification_page.dart';


class EditPaymentMethod extends StatefulWidget {
  const EditPaymentMethod({super.key});

  @override
  State<EditPaymentMethod> createState() => _EditPaymentMethod();
}

class _EditPaymentMethod extends State<EditPaymentMethod> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              icon: Icon(Icons.arrow_back)
            )
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
                  text: "Alias de la tarjeta",
                  weight: FontWeight.w700,
                  color: AppColors.maintextColor,
                  ),

                  const SizedBox(height: 12,),

                  const MyTextField(
                    hintText: 'BBVA',
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ReusableElevatedButton(text: 'Actualizar', onPressed: (){}),
                  ),

                  Center(
                    child: ReusableTextButton(
                      text: 'Eliminar tarjeta', 
                      weight: FontWeight.w700,
                      onPressed: (){
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context, 
                          builder: (BuildContext context) {
                            return ModalDeletePayment();
                          }
                        );
                      },
                    ),
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