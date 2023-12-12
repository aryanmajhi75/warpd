import 'package:flutter/material.dart';

import '../constants.dart';

//Theme settingsfor light theme
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: spotifyWhite,
    brightness: Brightness.light,
    primary: spotifyGreen,
    secondary: spotifyBlack,
  ),
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
  // scaffoldBackgroundColor: spotifyWhite,
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
    headlineLarge: TextStyle(
      color: spotifyBlack,
      decoration: TextDecoration.none,
      fontSize: 40,
      overflow: TextOverflow.ellipsis,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      // debugLabel: "Log Out",
      color: Colors.red[800],
      decoration: TextDecoration.none,
      fontSize: 18,
      overflow: TextOverflow.ellipsis,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.w600,
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
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconSize: const MaterialStatePropertyAll(40),
      iconColor: MaterialStatePropertyAll(spotifyDarkGray),
      // foregroundColor: MaterialStatePropertyAll(spotifyGray),
      visualDensity: VisualDensity.comfortable,
    ),
  ),
  iconTheme: IconThemeData(color: spotifyDarkGray),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      visualDensity: VisualDensity.comfortable,
      // backgroundColor: MaterialStatePropertyAll(spotifyGray),
      iconColor: MaterialStatePropertyAll(spotifyBlack),
      // elevation: const MaterialStatePropertyAll(0),
      iconSize: const MaterialStatePropertyAll(30),
      overlayColor: MaterialStatePropertyAll(spotifyGreen),
      alignment: Alignment.center,
    ),
  ),
);

//Theme settingsfor dark theme
ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    background: spotifyBlack,
    brightness: Brightness.dark,
    primary: spotifyGreen,
    secondary: spotifyWhite,
  ),
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
  // scaffoldBackgroundColor: spotifyBlack,
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
    headlineLarge: TextStyle(
      color: spotifyWhite,
      decoration: TextDecoration.none,
      fontSize: 40,
      overflow: TextOverflow.ellipsis,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      // debugLabel: "Log Out",
      color: Colors.red[800],
      decoration: TextDecoration.none,
      fontSize: 18,
      overflow: TextOverflow.ellipsis,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.w600,
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
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStatePropertyAll(
        spotifyGreen,
      ),
      iconColor: MaterialStatePropertyAll(spotifyGreen),
      foregroundColor: MaterialStatePropertyAll(spotifyGreen),
      visualDensity: VisualDensity.comfortable,
    ),
  ),
  iconTheme: IconThemeData(color: spotifyGreen),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      visualDensity: VisualDensity.comfortable,
      // backgroundColor: MaterialStatePropertyAll(spotifyd),
      // iconColor: MaterialStatePropertyAll(spotifyGreen),
      // overlayColor: MaterialStatePropertyAll(spotifyGreen),
      // elevation: const MaterialStatePropertyAll(0),
      iconSize: MaterialStatePropertyAll(30),
      // shadowColor: MaterialStatePropertyAll(spotifyGray),
      alignment: Alignment.center,
    ),
  ),
);
