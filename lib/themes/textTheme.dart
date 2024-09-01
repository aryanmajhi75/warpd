import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warpd/util/colors.dart';

class WarpdTextTheme {
  WarpdTextTheme._();

  static const darkTextTheme = TextTheme(
    bodyMedium: TextStyle(
      fontFamily: 'Nunito-Sans',
      fontWeight: FontWeight.normal,
      color: WarpdColors.primary,
      fontSize: 16.0,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Nunito-Sans',
      fontWeight: FontWeight.normal,
      color: WarpdColors.primary,
      fontSize: 14.0,
    ),
  );

  static TextTheme lightTextTheme = GoogleFonts.nunitoSansTextTheme(
    const TextTheme(
      bodyMedium: TextStyle(
        fontWeight: FontWeight.normal,
        color: WarpdColors.primary,
        fontSize: 25.0,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Nunito-Sans',
        fontWeight: FontWeight.normal,
        color: WarpdColors.primary,
        fontSize: 15.0,
      ),
    ),
  );

  // static TextTheme darkAppbarTitle = const TextTheme(
  //   displayMedium: TextStyle(
  //     fontFamily: 'Quicksand',
  //     fontWeight: FontWeight.w900,
  //     color: Colors.white,
  //     fontSize: 20.0,
  //   ),
  // );

  static TextTheme darkAppbarTitle = GoogleFonts.quicksandTextTheme(
    const TextTheme(
      displayMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
      ),
    ),
  );

  static TextTheme lightAppbarTitle = GoogleFonts.quicksandTextTheme(
    const TextTheme(
      displayMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 30,
      ),
    ),
  );
}
