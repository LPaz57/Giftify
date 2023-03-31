import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';

class AppLargeText extends StatelessWidget {
  
  double size;
  final String text;
  final Color color;
  final FontWeight weight;

  AppLargeText({
    super.key, 
    this.size = 52.0, 
    this.weight = FontWeight.w600,
    required this.text, 
    this.color = AppColors.maintextColor
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