import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;

  PasswordTextField({required this.hintText, this.onChanged});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;
  
  final _textEditingController = TextEditingController();
  final ValueChanged<String>? onChanged;

  _PasswordTextFieldState({
    Key? key,
    this.onChanged,
  });

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
    return TextField(
      style: const TextStyle(
        color: AppColors.maintextColor
      ),
      controller: _textEditingController,

      decoration: InputDecoration(

        filled: true,
        fillColor: AppColors.textFieldBackground,

        hintText: widget.hintText,
        hintStyle: const TextStyle(
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

        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: AppColors.textColor2,
          ),
        ),
      ),
      obscureText: _obscureText,

      onChanged: onChanged,
    );
  }

}
