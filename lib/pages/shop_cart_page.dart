import 'package:flutter/material.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/widgets/cards/cart_card.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/modal_pay.dart';

class ShopCart extends StatefulWidget {
  const ShopCart({super.key});

  @override
  State<ShopCart> createState() => _ShopCart();
}

class _ShopCart extends State<ShopCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(title: 'Carrito'),

      body: Container(
        // width: double.maxFinite,
        // height: double.maxFinite,
        //color: Colors.blue,
        margin: EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 24),
                        child: CartCard(pathImage: 'assets/images/card2.png'),
                      ),
                    ],
                  );
                },
              ),
            ),

            SizedBox(
              //color: Colors.green,
              width: 312,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppText(text: 'Total: '),
                        AppLargeText(text: '\$600', size: 20,)
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      ReusableElevatedButton(
                        text: 'Procesar el pago', 
                        width: 312,
                        onPressed: (){
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context, 
                            builder: (BuildContext context) {
                              return ModalPago();
                            }
                          );
                        }
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}