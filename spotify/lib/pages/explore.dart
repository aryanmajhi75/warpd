import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/components/tabCards.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/pages/search.dart';
import 'package:spotify/theme/themeProvider.dart';
import 'package:spotify/theme/themes.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Image.asset(
          "images/Spotify_Logo.png",
          height: 30,
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen(),
            ),
          );
        },
        child: const Icon(
          Icons.search,
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              height: height * 0.9,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                // padding: const EdgeInsets.all(10),
                itemCount: 16,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color:
                          Provider.of<ThemeProvider>(context).getThemeData() ==
                                  lightMode
                              ? spotifyGreen.withOpacity(0.2)
                              : spotifyGreen.withOpacity(0.9),
                      child: TabCards(
                        title: "Genre $index",
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
