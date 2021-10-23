import 'package:flutter/material.dart';

import 'custom_text.dart';

class Button extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? buttonColor;
  final double width;
  final double? height;
  final Function() onPressed;

  const Button(
      {Key? key,
      required this.text,
      this.textColor,
      this.buttonColor,
      required this.width,
      required this.onPressed,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height ?? 20.0,
      child: ElevatedButton(
        key: key,
        style: ButtonStyle(
          alignment: Alignment.center,
          backgroundColor:
              MaterialStateProperty.all<Color>(buttonColor ?? Colors.white),
        ),
        child: CustomText(
          text: text,
          color: textColor ?? Colors.black,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
