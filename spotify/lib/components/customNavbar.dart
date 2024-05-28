import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/pages/explore.dart';
import 'package:spotify/pages/favorites.dart';
import 'package:spotify/pages/homeScreen.dart';
import 'package:spotify/pages/userProfile.dart';

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
    HomeScreen(),
    ExplorePage(),
    FavoritePage(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _navigation,
          selectedItemColor: spotifyGreen,
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
    );
  }
}
