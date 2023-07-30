import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {
  //Theme settingsfor light theme
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: spotifyWhite,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: spotifyDarkGray,
        ),
        iconTheme: IconThemeData(
          color: spotifyDarkGray,
        ),
      ),
      scaffoldBackgroundColor: spotifyWhite,
      textTheme: TextTheme(
        displayMedium: TextStyle(
          color: spotifyBlack,
          decoration: TextDecoration.none,
          fontSize: 14,
          overflow: TextOverflow.ellipsis,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        displayLarge: TextStyle(
          color: spotifyBlack,
          decoration: TextDecoration.none,
          fontSize: 18,
          overflow: TextOverflow.ellipsis,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: spotifyBlack,
          decoration: TextDecoration.none,
          fontSize: 20,
          overflow: TextOverflow.ellipsis,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: spotifyWhite,
        selectedItemColor: spotifyBlack,
        unselectedItemColor: spotifyGray,
        elevation: 0,
        selectedIconTheme: const IconThemeData(
          size: 32,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 30,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          visualDensity: VisualDensity.comfortable,
          backgroundColor: MaterialStatePropertyAll(spotifyWhite),
          iconColor: MaterialStatePropertyAll(spotifyBlack),
          elevation: const MaterialStatePropertyAll(0),
          iconSize: const MaterialStatePropertyAll(30),
          overlayColor: MaterialStatePropertyAll(spotifyGreen),
          alignment: Alignment.center,
        ),
      ),
    );
  }

  //Theme settingsfor dark theme
  static ThemeData get darkTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: spotifyBlack,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: spotifyGray,
        ),
        iconTheme: IconThemeData(
          color: spotifyGray,
        ),
      ),
      scaffoldBackgroundColor: spotifyBlack,
      textTheme: TextTheme(
        displayMedium: TextStyle(
          color: spotifyWhite,
          decoration: TextDecoration.none,
          fontSize: 14,
          overflow: TextOverflow.ellipsis,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        displayLarge: TextStyle(
          color: spotifyWhite,
          decoration: TextDecoration.none,
          fontSize: 18,
          overflow: TextOverflow.ellipsis,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: spotifyWhite,
          decoration: TextDecoration.none,
          fontSize: 20,
          overflow: TextOverflow.ellipsis,
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: spotifyBlack,
        elevation: 0,
        unselectedIconTheme: IconThemeData(
          color: spotifyGray,
          size: 30,
        ),
        selectedIconTheme: IconThemeData(
          size: 30,
          color: spotifyWhite,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          visualDensity: VisualDensity.comfortable,
          backgroundColor: MaterialStatePropertyAll(spotifyWhite),
          iconColor: MaterialStatePropertyAll(spotifyBlack),
          overlayColor: MaterialStatePropertyAll(spotifyGreen),
          elevation: const MaterialStatePropertyAll(0),
          iconSize: const MaterialStatePropertyAll(30),
          // shadowColor: MaterialStatePropertyAll(spotifyGray),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
