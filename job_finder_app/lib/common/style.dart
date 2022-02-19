import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color primaryColor = Color(0xFFFFFFFF);
final Color greyColor = Color(0xFF9CA5B4);
final Color blackColor = Color(0xFF081d43);
final Color blueColor = Color(0xFF5078E1);
final Color backgroundColor = Color(0xFFF6F8FB);

final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.dmSans(
      fontSize: 92, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.dmSans(
      fontSize: 57, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.dmSans(fontSize: 46, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.dmSans(
      fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.dmSans(fontSize: 23, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.dmSans(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.dmSans(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.dmSans(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.dmSans(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.dmSans(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.dmSans(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.dmSans(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.dmSans(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
