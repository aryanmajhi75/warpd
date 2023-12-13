import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';

class FavouriteTab extends StatefulWidget {
  const FavouriteTab({super.key});

  @override
  State<FavouriteTab> createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        DefaultTabController(
          length: 2,
          animationDuration: const Duration(milliseconds: 500),
          child: TabBar(
            labelPadding: const EdgeInsets.only(
              bottom: 5,
              left: 10,
              right: 10,
              top: 0,
            ),
            indicatorColor: spotifyGreen,
            indicatorWeight: 3,
            onTap: (value) {
              currentIndex = value;
            },
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                height: height * 0.03,
                child: Text(
                  "Songs",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Tab(
                height: height * 0.03,
                child: Text(
                  "Playlists",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
