import 'package:flutter/material.dart';
import 'package:giftify/pages/shop_cart_page.dart';

class IconCart extends StatelessWidget {
  const IconCart({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShopCart()
          )
        );
      },
      icon: const Icon(
        Icons.shopping_cart_outlined,
        
      )
    );
  }
}