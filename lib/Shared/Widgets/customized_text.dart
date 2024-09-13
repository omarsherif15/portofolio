import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomizedText extends StatelessWidget {
  const CustomizedText({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dosis(
        color: color,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        letterSpacing: 2,
      ),
      textAlign: textAlign,
    );
  }
}
