import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/config_row.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/my_text_field.dart';
import 'package:giftify/widgets/buttons/text_button.dart';

class ProfileConfig extends StatefulWidget {
  const ProfileConfig({super.key});

  @override
  State<ProfileConfig> createState() => _ProfileConfig();
}

class _ProfileConfig extends State<ProfileConfig> {

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
                      AppText(text: '@gwen.d.miller', weight: FontWeight.w500,)
                    ],
                  ),
                )            

              ],
            ),
            
            Container(
              margin: EdgeInsets.only(top: 32),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(text: 'Nombre', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: 'Gwen D. Miller'),
                  ),
                  AppLargeText(text: 'Nombre de usuario', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: 'gwen.d.miller'),
                  ),
                  AppLargeText(text: 'Correo electrónico', size: 14,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: MyTextField(hintText: 'gwen.miller@giftify.com'),
                  ),
                  AppLargeText(text: 'Número de teléfono', size: 14,),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 24),
                    child: MyTextField(hintText: '2391267812',),
                  ),

                  ReusableElevatedButton(text: 'Actualizar perfil', onPressed: (){})

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}