import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/pages/home_page.dart';
import 'package:giftify/pages/product_page.dart';
import 'package:giftify/pages/search_page.dart';
import 'package:giftify/pages/purchase_history_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  
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
      body: widgetsChildren[indexTap],
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