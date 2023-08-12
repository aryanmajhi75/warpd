import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/pages/homeScreen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  void _navigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    homeScreen(),
    homeScreen(),
    homeScreen(),
    homeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        // margin: const EdgeInsets.only(
        //   top: 0,
        //   bottom: 20,
        //   left: 10,
        //   right: 10,
        // ),
        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: spotifyBlack,
        //     width: 2,
        //     strokeAlign: BorderSide.strokeAlignOutside,
        //   ),
        //   boxShadow: [
        //     BoxShadow(
        //       blurRadius: 1,
        //       color: spotifyGray,
        //       spreadRadius: 2,
        //       offset: const Offset(
        //         0,
        //         3,
        //       ),
        //     ),
        //   ],
        //   borderRadius: BorderRadius.circular(20),
        // ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: _navigation,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_rounded),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded),
                label: "Favorites",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded),
                label: "Profile",
              )
            ],
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
