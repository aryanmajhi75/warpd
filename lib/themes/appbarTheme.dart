import 'package:flutter/material.dart';
import 'package:warpd/themes/textTheme.dart';

class WarpdAppbarTheme {
  WarpdAppbarTheme._();

  static AppBarTheme darkAppbarTheme = AppBarTheme(
    centerTitle: true,
    color: Colors.black,
    titleTextStyle: WarpdTextTheme.darkAppbarTitle.displayMedium,
  );
}
