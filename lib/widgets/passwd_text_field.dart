import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;

  PasswordTextField({required this.hintText});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: AppColors.maintextColor
      ),
      controller: _controller,

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
    );
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      int cursorPosition = _controller.selection.start;
      _controller.value = _controller.value.copyWith(
        text: _controller.text,
        selection: TextSelection(
          baseOffset: cursorPosition,
          extentOffset: cursorPosition,
        ),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
