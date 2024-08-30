import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomizedText extends StatelessWidget {
  const CustomizedText({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.fontSize = 20,
    this.fontWeight = FontWeight.normal
  }) : super(key: key);

  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dosis(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: 2,

      ),
    );
  }
}
