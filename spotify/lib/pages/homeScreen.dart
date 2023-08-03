import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:spotify/components/PlaylistItems.dart';

import '../components/songcard.dart';
import '../components/tabList.dart';

class homeScreen extends StatefulWidget {
  homeScreen({super.key});

  final Client client = Client()
      .setEndpoint('https://cloud.appwrite.io/v1')
      .setProject(
          '64c693cbb0374c425058'); // For self signed certificates, only use for development
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "images/Spotify_Logo.png",
          height: 30,
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert_rounded,
            size: 30,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: SongCard(),
                ),
                const TabList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Container(
                  height: 300,
                  color: Colors.amberAccent,
                  child: ListView(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    children: const [
                      SizedBox(
                        height: 80,
                        child: PlaylistItems(),
                      ),
                    ],
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
