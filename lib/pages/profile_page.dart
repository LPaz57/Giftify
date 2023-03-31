import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/pages/enable_notification_page.dart';
import 'package:giftify/pages/payment_method.dart';
import 'package:giftify/pages/profile_config_page.dart';
import 'package:giftify/pages/purchase_history_page.dart';
import 'package:giftify/pages/shipping_adress_page.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/config_row.dart';
import 'package:giftify/widgets/buttons/text_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBar(title: 'Perfil'),

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        //color: Colors.blue,
        margin: EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.profileGradientColor,
                        AppColors.profileGradientColor2
                      ]
                    )
                  ),

                  child: const Center(
                    child: Text(
                      'GM',
                      style: TextStyle(
                        color: AppColors.maintextColor,
                        fontFamily: 'Inter',
                        fontSize: 32,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),

                Container(
                  //color: Colors.green,
                  margin: EdgeInsets.only(left: 12),
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: 'Gwen D. Miller', size: 16,),
                      TextButton(
                        onPressed: (){
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileConfig()
                            )
                          );
                        }, 
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          visualDensity: VisualDensity.compact
                        ),
                        child: const Text(
                          'Ver perfil',
                          style: TextStyle(
                            color: AppColors.textColor1
                          ),
                        )
                      )
                    ],
                  ),
                )            

              ],
            ),
            
            Container(
              margin: EdgeInsets.only(top: 32),
              //color: Colors.blue,
              child: Column(
                children: [
                  ConfigRow(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PurchaseHistory(),
                        )
                      );
                    },
                  ),

                  ConfigRow(
                    text: 'Métodos de pago', 
                    pathImage: 'assets/images/creditcard.png', 
                    color: AppColors.configColor2,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PayMethod(),
                        )
                      );
                    },
                  ),

                  ConfigRow(
                    text: 'Direcciones de envío', 
                    pathImage: 'assets/images/navigation.png', 
                    color: AppColors.configColor3,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShippingAddress(),
                        )
                      );
                    },
                  ),

                  ConfigRow(
                    text: 'Notificaciones', 
                    pathImage: 'assets/images/bell.png', 
                    color: AppColors.configColor4,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnableNotification(),
                        )
                      );
                    },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}