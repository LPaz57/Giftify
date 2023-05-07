import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final IconData? icon;
  final double width;
  const MyTextField({super.key, required this.hintText, this.icon, this.width = 327});

  @override
  State<MyTextField> createState() => _myTextField(hintText: hintText, icon: icon, width: width);
}

class _myTextField extends State<MyTextField> {
  
  final String hintText;
  final IconData? icon;
  final double width;
  final ValueChanged<String>? onChanged;

  _myTextField({
    Key? key,
    required this.hintText,
    this.icon,
    this.width = 327,
    this.onChanged,
  });

  final _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(() {
      int cursorPosition = _textEditingController.selection.start;
      _textEditingController.value = _textEditingController.value.copyWith(
        text: _textEditingController.text,
        selection: TextSelection(
          baseOffset: cursorPosition,
          extentOffset: cursorPosition,
        ),
        composing: TextRange.empty,
      );
    });
  }


  @override
  void dispose(){
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 40,
      child: TextField(
        controller: _textEditingController,

        style: const TextStyle(
          color: AppColors.maintextColor
        ),
        decoration: InputDecoration(
    
          filled: true,
          fillColor: AppColors.textFieldBackground,
    
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: AppColors.textColor2
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.mainColor,
              width: 1.5,
            ),
          ),
    
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.mainColor,
              width: 1.5,
            ),
          ),
    
          prefixIcon: icon != null ? Icon(
            icon,
            color: AppColors.textColor2,
          ): null,
          
        ),

        textAlign: TextAlign.justify,
        textAlignVertical: TextAlignVertical.bottom,
    
        onChanged: onChanged,
      ),
    );
  }
}
