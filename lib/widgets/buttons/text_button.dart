import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';

class ReusableTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final FontWeight weight;
  final double size;
  final Color color;

  const ReusableTextButton({
    required this.text,
    required this.onPressed,
    this.size = 14,
    this.color = AppColors.textColor1,
    this.weight = FontWeight.w500
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.none,
          color: color,
          fontWeight: weight,
          fontSize: size,
          fontFamily: "Poppins"
        ),
      ),
    );
  }
}
