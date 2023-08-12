import 'package:flutter/material.dart';
import 'package:spotify/components/customNavbar.dart';
import 'package:spotify/themes.dart';

void main() {
  runApp(const Spotify());
}

class Spotify extends StatelessWidget {
  const Spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      theme: AppTheme.lightTheme,
      routes: {
        '/home': (context) => CustomNavBar(),
      },
      home: CustomNavBar(),
    );
  }
}
