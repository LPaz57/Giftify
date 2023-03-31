import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/cards/category_card.dart';
import 'package:giftify/widgets/icon_cart.dart';
import 'package:giftify/widgets/search_bar.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: null,
        title: AppLargeText(text: 'Buscar', size: 16,),
        actions: [
          IconCart(),
          const SizedBox(width: 12,)
        ],
      ),

      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          //color: Colors.blue,
          margin: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBar(),
      
              const SizedBox(height: 24,),
      
              AppLargeText(text: 'Explorar', size: 16,),
        
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CategoryCard(color: AppColors.mainColor,),
                      CategoryCard(text: 'Regalo sorpresa')
                    ],
                  ),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CategoryCard(text: 'Amistad', color: AppColors.widgetColor2,),
                      CategoryCard(text: 'Eco friendly', color: AppColors.widgetColor3,)
                    ],
                  ),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CategoryCard(text: 'Amor', color: AppColors.widgetColor4,),
                      CategoryCard(text: 'Graduacion', color: AppColors.widgetColor5,)
                    ],
                  )
                ],
              )
            ]
          ),
        ),
      ),

    );
  }
}