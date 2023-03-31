import 'package:flutter/material.dart';
import 'package:giftify/pages/product_page.dart';
import 'package:giftify/pages/profile_page.dart';
import 'package:giftify/pages/purchase_history_page.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/widgets/category_button_list.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/icon_cart.dart';
import 'package:giftify/widgets/cards/product_card.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/cards/promo_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  final pathImage = "assets/images/regalos2.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.location_pin),
              color: AppColors.mainColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 14, right: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: "Ubicacion de entrega", size: 12,),
                AppLargeText(text: 'Morelia', size: 12,)
              ]
            ),
          ),

          IconCart(),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile()
                )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/profile_picture.png', 
                  width: 36,
                ),
              ),
            ),
          ),
            // const SizedBox(
            //   width: 10,
            // )
          ],
      ),

      body: Container(
        //color: Colors.amber,
        margin: const EdgeInsets.only(top: 12, left: 24, right: 24),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PromoCard(pathImage: 'assets/images/card1.png'),
            
            const CategorieButtonList(),

            Row(
              children: [
                AppLargeText(
                  text: "Mas populares", size: 16,
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ProductCard(pathImage: "assets/images/card2.png"),
                      SizedBox(width: 12,),
                      ProductCard(pathImage: "assets/images/card2.png")
                    ],
                  );
                },
              ),
            ),
          ]
        ),
      ),
    );
  }
}