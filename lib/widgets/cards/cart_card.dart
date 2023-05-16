import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';

class CartCard extends StatelessWidget {

  final String pathImage;

  const CartCard({
    required this.pathImage,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(8),
      width: 312,
      height: 116,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.buttonBackground2
      ),

      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: 8),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              //color: Colors.red,
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/images/card2.png'),
                fit: BoxFit.cover
              )
            ),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, bottom: 0),
                child: Container(
                  //color: Colors.green,
                  width: 180,
                  child: Row(
                    children: [
                      Flexible(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        child:
                          AppLargeText(text: 'Juego de velas perfumadas', size: 16,),                 
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 8),
                width: 180,
                //color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.blueGrey,
                      width: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableElevatedButton(
                            text: '-', 
                            onPressed: (){}, 
                            width: 10, 
                            height: 30,
                            color: AppColors.buttonBackground3,
                          ),
                          
                          AppLargeText(text: '2', size: 14,),
              
                          ReusableElevatedButton(
                            text: '+', 
                            width: 20, 
                            height: 30,
                            onPressed: (){},
                          )
                        ],
                      ),
                    ),
              
                    AppLargeText(text: '\$300', size: 14,)
                  ],
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}