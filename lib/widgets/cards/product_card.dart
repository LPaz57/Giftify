import 'package:flutter/material.dart';
import 'package:giftify/pages/product_page.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/constants/colors.dart';

class ProductCard extends StatelessWidget {
  final String pathImage;

  const ProductCard({
    required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(),
                  )
                );
              },

      child: Container(
        width: 150,
        height: 192,
        margin: EdgeInsets.only(top: 12,),
        //color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 152,
              height: 100,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8)
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/card2.png")
                  )
                ),
              ),
            ),
    
            //SizedBox(height: 104,),
    
            Container(
              height: 92,
              decoration: const BoxDecoration (
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)
                ),
                color: AppColors.cardColor,
              ),
              
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                AppLargeText(text: 'Juego de velas perfumadas', size: 16,),
                Row(
                  children: [
                    const Icon(Icons.star, color: AppColors.starColor,),
                    AppText(text: '4.5', color: AppColors.textColor4, size: 12,),
                    Container(width: 58,),
                    AppText(text: "\$300", size: 12,)
                  ],
                )
              ]),
            )
        ],)
      ),


    );
  }
}
