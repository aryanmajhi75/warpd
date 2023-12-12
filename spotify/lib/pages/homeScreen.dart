import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:gap/gap.dart';
import 'package:spotify/components/songTile.dart';
import 'package:spotify/pages/search.dart';

import '../components/songcard.dart';
import '../components/tabList.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  final Client client = Client()
      .setEndpoint('https://cloud.appwrite.io/v1')
      .setProject(
          '64c693cbb0374c425058'); // For self signed certificates, only use for development
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Gap(
                  10,
                ),
                const Center(
                  child: SongCard(),
                ),
                const TabList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Playlist",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "See More",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 300,
                  // color: Colors.amberAccent,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Gap(5);
                    },
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    shrinkWrap: false,
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/musicplayer');
                          },
                          child: const SongTile(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
