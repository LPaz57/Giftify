import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';

class CategorieButton extends StatelessWidget {
  final List<Button> buttons;
  
  const CategorieButton({
    required this.buttons
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: buttons
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const Button({
    required this.text,
    this.color = AppColors.buttonBackground2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(50, 20),
          backgroundColor: color,
          ),
        child: Text(
          text,
          style: const TextStyle(
            decoration: TextDecoration.none,
            color: AppColors.maintextColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily: "Poppins"
          ),
        ),
      ),
    );
  }
}
