import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

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
          icon: const Icon(Icons.search),
        ),
        actions: const [
          Icon(Icons.more_vert_rounded),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: SongCard(),
                ),
                TabList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
