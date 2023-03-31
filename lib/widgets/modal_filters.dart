import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/widgets/app_large_text.dart';
import 'package:giftify/widgets/buttons/elevated_button.dart';
import 'package:giftify/widgets/buttons/text_button.dart';

class ModalFilters extends StatefulWidget {
  @override
  _ModalFilters createState() => _ModalFilters();
}

class _ModalFilters extends State<ModalFilters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: const BoxDecoration(
        color: AppColors.buttonBackground2,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.close, color: AppColors.maintextColor,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                AppLargeText(text: 'Ordenar y filtrar', size: 16,),

                ReusableTextButton(text: 'Limpiar', size: 16, onPressed: (){})
              ],
            ),

            AppLargeText(text: 'Ordenar', weight: FontWeight.w500, size: 16,),

            ReusableTextButton(text: 'Más popular',color: AppColors.textColor2, onPressed: (){}),
            ReusableTextButton(text: 'Tiempo de entrega', color: AppColors.textColor2, onPressed: (){}),
            ReusableTextButton(text: 'Calificación', color: AppColors.textColor2, onPressed: (){}),

            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
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

            AppLargeText(text: 'Categorias', weight: FontWeight.w500, size: 16,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReusableElevatedButton(
                  text: 'Eco friendly', 
                  color: AppColors.buttonBackground3,
                  width: 97, 
                  height: 26,
                  onPressed: (){}
                ),

                ReusableElevatedButton(
                  text: 'Amistad', 
                  color: AppColors.buttonBackground3,
                  width: 97, 
                  height: 26,
                  onPressed: (){}
                ),

                ReusableElevatedButton(
                  text: 'Parejas', 
                  color: AppColors.buttonBackground3,
                  width: 97, 
                  height: 26,
                  onPressed: (){}
                )
              ],
            ),   

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableElevatedButton(
                  text: 'Graduación', 
                  color: AppColors.buttonBackground3,
                  width: 97, 
                  height: 26,
                  onPressed: (){}
                ),

                ReusableElevatedButton(
                  text: 'Cumpleaños', 
                  color: AppColors.buttonBackground3,
                  width: 97, 
                  height: 26,
                  onPressed: (){}
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
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

            AppLargeText(text: 'Rango de precios', weight: FontWeight.w500, size: 16,),

            SizedBox(height: 12,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ReusableElevatedButton(
                  text: '\$', 
                  color: AppColors.buttonBackground3,
                  width: 64, 
                  height: 37,
                  radius: 50,
                  onPressed: (){}
                ),
                ReusableElevatedButton(
                  text: '\$\$', 
                  color: AppColors.buttonBackground3,
                  width: 64, 
                  height: 37,
                  radius: 50,
                  onPressed: (){}
                ),
                ReusableElevatedButton(
                  text: '\$\$\$', 
                  color: AppColors.buttonBackground3,
                  width: 64, 
                  height: 37,
                  radius: 50,
                  onPressed: (){}
                ),
                ReusableElevatedButton(
                  text: '\$\$\$', 
                  color: AppColors.buttonBackground3,
                  width: 64, 
                  height: 37,
                  radius: 50,
                  onPressed: (){}
                ),
              ],
            ), 

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ReusableElevatedButton(text: 'Aplicar', onPressed: (){}),
            )     
          ],
        ),
      ),
    );
  }
}