import 'package:flutter/material.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/modal_delete_address.dart';
import 'package:giftify/widgets/my_text_field.dart';
import 'package:giftify/widgets/buttons/text_button.dart';

class EditShippingAddress extends StatefulWidget {
  const EditShippingAddress({super.key});

  @override
  State<EditShippingAddress> createState() => _EditShippingAddress();
}

class _EditShippingAddress extends State<EditShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(title: 'Editar dirección de envío',),
      body: Container(
        //color: Colors.green,
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(top: 24),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(text: 'Calle y número', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: 'Las nubes 21'),
                  ),
                  AppLargeText(text: 'Colonia', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: 'Cielo'),
                  ),
                  AppLargeText(text: 'Código postal', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: '61800'),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: 'Ciudad', size: 14,),

                          const Padding(
                            padding: EdgeInsets.only(top: 12, bottom: 24),
                            child: MyTextField(hintText: 'Morelia', width: 152,),
                          ),
                        ],  
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: 'Estado', size: 14,),

                          const Padding(
                            padding: EdgeInsets.only(top: 12, bottom: 24),
                            child: MyTextField(hintText: 'Michoacan', width: 152,),
                          ),
                        ],  
                      ),
                    ],
                  ),

                  ReusableElevatedButton(text: 'Agregar dirección', onPressed: (){},),
                  Center(
                    child: ReusableTextButton(
                      text: 'Eliminar dirección',
                      onPressed: (){
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context, 
                            builder: (BuildContext context) {
                              return ModalDelete();
                            }
                          );
                        },
                    ),
                  )
                ]
              )
            )
          ],
        ),
      ),

    );
  }
}