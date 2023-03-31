import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_text.dart';

class PayCard extends StatelessWidget {


  final String number;
  final String imageCard;
  final String principal;
  bool isMain;
  final VoidCallback onTap;


  PayCard({
    required this.number,
    this.imageCard = 'assets/images/mastercard.png',
    this.principal = '',
    this.isMain = false,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 312,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
      
              Row(
                children: [
                  Container(
                    width: 44,
                    height: 25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageCard)
                      )
                    ),
                  ),
    
                      
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 120),
                    child: AppText(text: number, size: 15, weight: FontWeight.w500,),
                  ),
    
                  AppText(text: principal)
                ],
              ),
    
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 4),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.textColor4,
                        width: 1,
                        style: BorderStyle.solid
                      )
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}