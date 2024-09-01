import "package:flutter/material.dart";
import "package:warpd/themes/appbarTheme.dart";
import "package:warpd/themes/cardTheme.dart";
import "package:warpd/themes/navbarTheme.dart";
import "package:warpd/themes/textTheme.dart";

class WarpdTheme {
  WarpdTheme._();

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: WarpdTextTheme.darkTextTheme,
    appBarTheme: WarpdAppbarTheme.darkAppbarTheme,
    scaffoldBackgroundColor: Colors.black,
    cardTheme: WarpdCardTheme.darkCardTheme,
    navigationBarTheme: WarpdNavbarTheme.darkNavbarTheme,
  );
}
