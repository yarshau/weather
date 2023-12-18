import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final TextStyle? textStyle;

  const CustomText(
      {Key? key,
      required this.text,
      this.fontWeight,
      this.fontSize,
      this.color,
      this.textAlign,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontSize: fontSize ?? 20,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? Colors.black,
        decoration: TextDecoration.none,
      ),
    );
  }
}
