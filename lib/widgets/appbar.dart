import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/icon_cart.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{


  final String title;

  CustomAppBar ({
    this.title = ''
    });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Center(child: AppLargeText(text: title, size: 16,)),
        actions: [
          IconCart(),
          SizedBox(width: 12,)
        ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}