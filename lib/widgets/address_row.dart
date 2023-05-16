import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_text.dart';

class AddressRow extends StatelessWidget {


  final String address;
  final String colonia;
  final String cp;
  final String city;
  final String state;
  final String iconNavig;
  final String principal;
  bool isMain;
  final VoidCallback onTap;


  AddressRow({
    required this.address,
    this.colonia = 'Centro',
    this.cp = '58128',
    this.city = 'Morelia',
    this.state = 'Michoacan',
    this.iconNavig = 'assets/images/navig.png',
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
                        image: AssetImage(iconNavig)
                      )
                    ),
                  ),
    
                      
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(text: address, size: 15, weight: FontWeight.w500,),
                      AppText(text: colonia + ', ' +cp),
                      AppText(text: city + ", " + state),                      
                    ],
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