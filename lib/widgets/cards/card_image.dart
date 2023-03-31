import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {

  final String pathImage;

  const CardImage({
    required this.pathImage,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 120,
      // margin: const EdgeInsets.only(
      //   top: 20,
      //   left: 24,
      //   right: 24
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover
        )
      ),
    );
  }
}