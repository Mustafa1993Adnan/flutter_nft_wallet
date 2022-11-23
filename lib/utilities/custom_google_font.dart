// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle customGoogleFont({
  required double fontSize,
  required FontWeight fontWeight,
  Color color = const Color(0xFFFFFFFF),
  double letterSpacing = 0,
}) {
  return GoogleFonts.urbanist(
      letterSpacing: letterSpacing,
      textStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ));
}
