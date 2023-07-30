import 'package:flutter/material.dart';
import 'package:spotify/pages/homeScreen.dart';

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
      routes: {
        '/home': (context) => homeScreen(),
      },
      home: homeScreen(),
    );
  }
}
