import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

fontStylePlusJakarta(
    {Color? color,
      double fontSize = 12,
      double? height,
      fontWeight = FontWeight.w500,
      double? letterSpacing,
      TextDecoration decoration = TextDecoration.none}) {
  return TextStyle(
      fontWeight: fontWeight,
      letterSpacing: letterSpacing ?? 1,
      fontSize: fontSize,
      fontFamily: 'PlusJakartaSans',
      color: color,
      height: height,
      decoration: decoration);
}

const poppinsStyle = GoogleFonts.poppins;