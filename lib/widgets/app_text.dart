import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';

class AppText extends StatelessWidget {
  
  double size;
  final String text;
  final Color color;
  final FontWeight weight;

  AppText({
    super.key, 
    this.size = 14.0, 
    required this.text, 
    this.weight = FontWeight.w100,
    this.color = AppColors.textColor2
    });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontFamily: "Poppins"
      ),
    );
  }
}