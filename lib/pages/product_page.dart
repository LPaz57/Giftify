import 'package:flutter/material.dart';
import 'package:giftify/pages/home_page.dart';
import 'package:giftify/pages/search_page.dart';
import 'package:giftify/pages/purchase_history_page.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/cards/card_image.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';

class ProductPage extends StatefulWidget {

  final String name;
  final String description;
  final double price;
  final String pathImage;
  final int rating;

  const ProductPage(
    {super.key, required this.name, required this.description, required this.price, required this.pathImage, required this.rating}
  );

  @override
  State<ProductPage> createState() => _ProductPage(name, description, price, pathImage, rating);
}

class _ProductPage extends State<ProductPage> {

  final String name;
  final String description;
  final double price;
  final String pathImage;
  final int rating;

  _ProductPage(
    this.name, 
    this.description, 
    this.price, 
    this.pathImage, 
    this.rating
    );

    int indexTap = 0;

  final List<Widget> widgetsChildren = [
    const HomePage(),
    const SearchPage(),
    const PurchaseHistory(),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: CustomAppBar(title: 'Detalles'),

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        //color: Colors.blue,
        margin: EdgeInsets.only(top: 12, left: 24, right: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardImage(pathImage: pathImage),
            Padding(
              padding: const EdgeInsets.only(top: 12, ),
              child: AppLargeText(text: name, size: 16,),
            ),
            Padding(
              padding: const EdgeInsets.only(top:4,),
              child: Row(
                children: [
                  Icon(Icons.star, color: AppColors.starColor,),
                  AppText(text: ' $rating | 1.2 km | Buen empaque', size: 12, color: AppColors.textColor4,)
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top:12, right: 24),
              child: AppText(text: description, size: 12, color: AppColors.textColor2,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 24, ),
              child: AppText(text: 'Tipo'),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12, ),
              child: Row(children: [
                ReusableElevatedButton(text: 'Entrega', onPressed: (){}, width: 152),
                SizedBox(width: 6,),
                ReusableElevatedButton(text: 'Recoger', onPressed: (){}, width: 152, color: AppColors.buttonBackground2,),
              ],)
            ),

            Padding(
              padding: EdgeInsets.only(top: 180),
              child: Column(children: [
                Row(
                  children: [
                    AppText(text: 'Cantidad'),
                    SizedBox(width: 80,),
                    ReusableElevatedButton(text: "-", onPressed: (){}, width: 12, height: 30, color: AppColors.buttonBackground2,),
                    Padding(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: AppLargeText(text: '2', size: 20,),
                    ),
                    ReusableElevatedButton(text: "+", onPressed: (){}, width: 12, height: 30,)
                  ],
                ),

                Row(
                  children: [
                    AppText(text: 'Total: '),
                    AppLargeText(text: "\$600", size: 16,),
                    SizedBox(width: 70,),
                    ReusableElevatedButton(text: 'Ordenar', onPressed: (){}, width: 164,)
                  ],
                )
              ]),
            ),
          ]
        ),
      ),

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColors.backgroundColor,
          primaryColor: AppColors.mainColor,
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: AppColors.textColor2,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inicio"
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Buscar"
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              label: "Historial"
            ),
          ],
        ),
      ),
    );
  }
}