import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleGenerator extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final int maxLine;
  TextStyleGenerator({
    @required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.maxLine,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
