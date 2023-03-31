import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/pages/add_payment_method_page.dart';
import 'package:giftify/pages/editar_pay_method_page.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/payment_row.dart';
import 'package:giftify/widgets/buttons/text_button.dart';

class PayMethod extends StatefulWidget {
  const PayMethod({super.key});

  @override
  State<PayMethod> createState() => _PayMethod();
}

class _PayMethod extends State<PayMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Metodos de pago',),

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
                      PayCard(
                        number: '•••• 5432',
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditPaymentMethod(),
                            )
                          );
                        }, 
                      ),
                    ],
                  );
                },
              ),
            ),

            ReusableTextButton(
              text: 'Agregar método de pago', 
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPayMethod()
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