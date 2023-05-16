import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/appbar.dart';
import 'package:giftify/widgets/cards/shop_history_card.dart';

class PurchaseHistory extends StatefulWidget {
  const PurchaseHistory({super.key});

  @override
  State<PurchaseHistory> createState() => _PurchaseHistory();
}

class _PurchaseHistory extends State<PurchaseHistory> {

  final pathImage = "assets/images/regalos2.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: CustomAppBar(title: 'HIstorial',),

      body: Container(
        //color: Colors.blue,
        width: double.maxFinite,
        height: double.maxFinite,
        margin: const EdgeInsets.only(top: 12, left: 24, right: 24),

        child: Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ShopHistoryCard(pathImage: "assets/images/card2.png"),
                    ],
                  );
                },
              ),
            ),
      )
    );
  }
}