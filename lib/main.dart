import 'package:flutter/material.dart';
import 'package:warpd/compoents/navbar.dart';
import 'package:warpd/themes/themes.dart';

void main() {
  runApp(const WarpD());
}

class WarpD extends StatelessWidget {
  const WarpD({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: WarpdTheme.darkTheme,
      // theme: ThemeData(
      //     colorScheme: MaterialThemeBuilder(
      //             primary: Colors.blue,
      //             secondary: Colors.purple,
      //             tertiary: Colors.lightBlue)
      //         .toScheme()),
      home: const Scaffold(
        body: Center(
          child: Navbar(),
        ),
      ),
    );
  }
}
