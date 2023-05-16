import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/pages/add_payment_method_page.dart';
import 'package:giftify/pages/add_shipping_address_page.dart';
import 'package:giftify/pages/edit_shippinng_address_page.dart';
import 'package:giftify/pages/editar_pay_method_page.dart';
import 'package:giftify/widgets/address_row.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/payment_row.dart';
import 'package:giftify/widgets/buttons/text_button.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddress();
}

class _ShippingAddress extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Direcciones de envío',),

      body: Container(
        margin: EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 24),
        //color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AddressRow(
                        address: 'Gral. Negrete 33', 
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditShippingAddress()
                            )
                          );
                        }
                      )
                    ],
                  );
                },
              ),
            ),

            ReusableTextButton(
              text: 'Agregar dirección de envío', 
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddShippingAddress()
                  )
                );
              },
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10, bottom: 4, right: 8),
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
          ],
        ),
      ),
    );
  }
}