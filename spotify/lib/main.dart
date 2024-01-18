import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/components/customNavbar.dart';
import 'package:spotify/pages/musicplayer.dart';
import 'package:spotify/theme/themeProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const Spotify(),
    ),
  );
}

class Spotify extends StatelessWidget {
  const Spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        '/home': (context) => const CustomNavBar(),
      },
      home: const CustomNavBar(),
    );
  }
}
