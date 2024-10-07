import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  const TextWidget(
      {super.key,
      required this.text,
      this.textAlign,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
