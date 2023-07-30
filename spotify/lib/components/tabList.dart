import 'package:flutter/material.dart';
import 'package:spotify/components/tabCards.dart';

class TabList extends StatefulWidget {
  const TabList({super.key});

  @override
  State<TabList> createState() => _TabListState();
}

class _TabListState extends State<TabList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.pinkAccent,
      height: 280,
      child: Column(
        children: [
          DefaultTabController(
            length: 5,
            animationDuration: const Duration(milliseconds: 500),
            child: TabBar(
              labelPadding: const EdgeInsets.only(
                bottom: 5,
                left: 10,
                right: 10,
                top: 0,
              ),
              padding: const EdgeInsets.only(
                bottom: 0,
                left: 0,
                right: 10,
                top: 0,
              ),
              indicatorColor: const Color(0xFF1AB40C),
              indicatorWeight: 3,
              onTap: (value) {
                currentIndex = value;
              },
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  height: 24.0,
                  child: Text(
                    "Artists",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Tab(
                  height: 24.0,
                  child: Text(
                    "Podcasts",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Tab(
                  height: 24.0,
                  child: Text(
                    "Liked",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Tab(
                  height: 24.0,
                  child: Text(
                    "Trending",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Tab(
                  height: 24.0,
                  child: Text(
                    "Recommended",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 235,
            padding: const EdgeInsets.all(5),
            // color: Colors.pinkAccent,
            child: ListView(
              itemExtent: 145,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              children: const [
                TabCards(),
                TabCards(),
                TabCards(),
                TabCards(),
                TabCards(),
                TabCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
