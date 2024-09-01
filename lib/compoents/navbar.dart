import 'package:flutter/material.dart';
import 'package:dot_bottom_nav_bar/view/dot_bottom_nav_bar.dart';
import 'package:warpd/modules/favourite.dart';
import 'package:warpd/modules/home.dart';
import 'package:warpd/modules/profile.dart';
import 'package:warpd/modules/recommended.dart';
import 'package:warpd/util/colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectIndex = 0;

  List<Widget> modules = const [
    Home(),
    Recommended(),
    Favourite(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(toolbarHeight: 0),
      body: modules[selectIndex],
      bottomNavigationBar: DotBottomNavBar(
        backgroundColor: Colors.transparent,
        selectedColor: WarpdColors.primary,
        dotColor: WarpdColors.primary,
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        items: [
          BottomNavItem(
            emptySvg: "assets/icons/outline/home.svg",
            fillSvg: "assets/icons/fill/home.svg",
            label: "",
          ),
          BottomNavItem(
            emptySvg: "assets/icons/outline/gemini.svg",
            fillSvg: "assets/icons/fill/gemini.svg",
            label: "",
          ),
          BottomNavItem(
            emptySvg: "assets/icons/outline/heart.svg",
            fillSvg: "assets/icons/fill/heart.svg",
            label: "",
          ),
          BottomNavItem(
            emptySvg: "assets/icons/outline/user.svg",
            fillSvg: "assets/icons/fill/user.svg",
            label: "",
          ),
        ],
      ),
    );
  }
}
