import 'package:flutter/material.dart';
import 'package:giftify/pages/product_page.dart';
import 'package:giftify/pages/search_result_page.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/constants/colors.dart';

class CategoryCard extends StatelessWidget {

  final String pathImage;
  final String text;
  final Color color;

  const CategoryCard({
    this.color = AppColors.widgetColor1,
    this.text = 'Populares',
    this.pathImage = 'assets/images/gift1.png',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchResultPage(),
                  )
                );
              },

      child: Container(
        //color: Colors.blueGrey,
        margin: const EdgeInsets.only(top: 12),
        width: 150,
        height: 82,
        padding: const EdgeInsets.only(top:12, left: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8)
        ),  

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLargeText(text: text, size: 12,),
            Image.asset(
              pathImage, 
              color: Color.fromRGBO(255, 255, 255, 0.5), 
              colorBlendMode: BlendMode.modulate,
            )
          ],
        ),
      ),
    );
  }
}
