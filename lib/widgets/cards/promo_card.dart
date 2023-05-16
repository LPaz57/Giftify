import 'package:flutter/material.dart';
import 'package:giftify/widgets/cards/card_image.dart';
import 'package:giftify/constants/colors.dart';

class PromoCard extends StatelessWidget {
  final String pathImage;

  const PromoCard({
    required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(top: 12, left: 24, right: 24),
      child: Stack(
        children: [
          const CardImage(pathImage: 'assets/images/card1.png'),
          Container(
            width: 327,
            height: 120,
            //margin: const EdgeInsets.only(top: 20, left: 24, right: 24),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                //tileMode: TileMode.mirror,
                colors: [
                  Color.fromARGB(255, 168, 6, 193),
                  Colors.transparent,
                ],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
    
          Container(
            //color: Colors.cyan,
            width: 160,
            height: 110,
            //margin: const EdgeInsets.only(top: 20, left: 24, right: 100),
            child: Padding(
              padding: const EdgeInsets.only(top: 18, left: 18),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: const [
                              SizedBox(
                                width: 115,
                                height: 40,
                                child: Text(
                                  'COMPRA Y OBTEN',
                                  style: TextStyle(
                                    height: 0.98,
                                    fontFamily: 'Dela',
                                    color: AppColors.maintextColor,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 24,
                            height: 58,
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Inter',
                                  color: AppColors.maintextColor),
                            ),
                          )
                        ],
                      ),
                      
                    ]
                  ),

                  const Positioned(
                    top: 38,
                    child: Text(
                          'Regalo',
                          style: TextStyle(
                              fontFamily: 'Libre',
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor3),
                        ),
                  )
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
