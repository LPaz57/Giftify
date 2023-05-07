import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/pages/home_page.dart';
import 'package:giftify/pages/search_page.dart';
import 'package:giftify/pages/purchase_history_page.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/cards/product_card.dart';
import 'package:giftify/widgets/search_bar.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPage();

}

class _SearchResultPage extends State<SearchResultPage> {

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
      appBar: CustomAppBar(title: 'Buscar',),

      body: Container(
        //color: Colors.blue,
        margin: const EdgeInsets.only(top: 12, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: AppLargeText(text: 'Resultados', size: 16,),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      //ProductCard(pathImage: "assets/images/card2.png"),
                      SizedBox(width: 12,),
                      //ProductCard(pathImage: "assets/images/card2.png")
                    ],
                  );
                },
              ),
            ),
          ],
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