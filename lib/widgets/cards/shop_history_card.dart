import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/app_text.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';

class ShopHistoryCard extends StatelessWidget {

  final String pathImage;
  final String description;
  final String noPedido;

  const ShopHistoryCard({
    this.description = 'Juego de velas perfumadas',
    required this.pathImage,
    this.noPedido = 'Pedido #E5DDC',

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      padding: EdgeInsets.all(8),
      width: 312,
      height: 183,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.buttonBackground2
      ),

      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 296,
                //color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: noPedido, size: 16,),
                    AppText(text: '1 artículo • \$300'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(text: '28/02/2023 3:27 PM'),
                        AppLargeText(text: '\$300', size: 12,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),

          Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 6),
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

          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: AssetImage(pathImage),
                            fit: BoxFit.cover
                          )
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: AppLargeText(text: description, size: 12,),
                      )
                    ],
                  ),

                  SizedBox(
                    width: 296,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ReusableElevatedButton(
                          text: 'Reordenar', 
                          onPressed: (){},
                          width: 92,
                          height: 26,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}