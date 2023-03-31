import 'package:flutter/material.dart';
import 'package:giftify/pages/payment_method.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/constants/colors.dart';

class ConfigRow extends StatelessWidget {

  final String pathImage;
  final String text;
  final Color color;
  final VoidCallback onTap;

  const ConfigRow({
    this.color = AppColors.configColor1,
    this.text = 'Tus compras',
    required this.onTap,
    this.pathImage = 'assets/images/bolsita.png',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //color: Colors.blueGrey,
        margin: const EdgeInsets.only(top: 12),
        width: 190,
        height: 42,  

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: color,
              ),
              child: Image(image: AssetImage(pathImage, )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,),
              child: AppLargeText(text: text, size: 16,),
            ),
          ],
        ),
      ),
    );
  }
}
