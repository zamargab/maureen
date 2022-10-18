// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppThemes {
  static final appThemeData = ThemeData(
    primaryColor: Color(0xFFFFA8B5),
    textTheme: TextTheme(
      bodyText1: GoogleFonts.dancingScript(
          textStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)),
      bodyText2:
          GoogleFonts.abel(textStyle: const TextStyle(color: Colors.white)),
      headline1: GoogleFonts.abel(
          textStyle: TextStyle(
        color: Colors.black,
        fontSize: 13.sp,
      )),
      headline2: GoogleFonts.acme(
          textStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.sp,
      )),
    ),
  );
}
