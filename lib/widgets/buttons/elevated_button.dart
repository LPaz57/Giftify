import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';

class ReusableElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final IconData? icon;
  final double radius;
  final double size;

  const ReusableElevatedButton({
    required this.text,
    this.color = AppColors.buttonBackground1,
    this.width = 327,
    this.height = 45,
    this.icon,
    this.radius = 8,
    this.size = 14,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        
      ),
      child: ElevatedButton(
        
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)
          ),
          minimumSize: Size(width, height),
          backgroundColor: color,
          ),
        child: AppLargeText(text: text, size: size,),    
      ),
    );
  }
}
