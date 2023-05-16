import 'package:flutter/material.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/cards/credit_card.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/my_text_field.dart';

class AddPayMethod extends StatefulWidget {
  const AddPayMethod({super.key});

  @override
  State<AddPayMethod> createState() => _AddPayMethod();
}

class _AddPayMethod extends State<AddPayMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(title: 'Agregar método de pago',),
      body: Container(
        //color: Colors.green,
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Column(
          children: [
            CreditCard(),

            Container(
              margin: EdgeInsets.only(top: 24),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(text: 'Alias de la tarjeta', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: 'BBVA'),
                  ),
                  AppLargeText(text: 'Titular de la tarjeta', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: 'Gwen D. Miller'),
                  ),
                  AppLargeText(text: 'Numero de la tarjeta', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: '•••• •••• •••• 1234'),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: 'Expira', size: 14,),

                          const Padding(
                            padding: EdgeInsets.only(top: 12, bottom: 24),
                            child: MyTextField(hintText: '10/24', width: 152,),
                          ),
                        ],  
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: 'CVV', size: 14,),

                          const Padding(
                            padding: EdgeInsets.only(top: 12, bottom: 24),
                            child: MyTextField(hintText: '•••', width: 152,),
                          ),
                        ],  
                      ),
                    ],
                  ),

                  ReusableElevatedButton(text: 'Agregar tarjeta', onPressed: (){},),
                ]
              )
            )
          ],
        ),
      ),

    );
  }
}