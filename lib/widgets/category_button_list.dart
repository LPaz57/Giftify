import 'package:flutter/material.dart';
import 'package:giftify/widgets/buttons/category_button.dart';

class CategorieButtonList extends StatelessWidget {
  
  const CategorieButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView(
        padding: const EdgeInsets.all(24.0),
        scrollDirection: Axis.horizontal,
        children: [
          CategorieButton(
            buttons: [
              Button(
                text: 'Cumpleaños', 
                onPressed: (){}
              ),
              Button(
                text: 'Cumpleaños', 
                onPressed: (){}
              ),
              Button(
                text: 'Cumpleaños', 
                onPressed: (){}
              ),
              Button(
                text: 'Cumpleaños', 
                onPressed: (){}
              )
            ],            
          )
        ]
      )
    );
  }
}