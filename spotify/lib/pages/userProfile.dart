import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/theme/themeProvider.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

//use sliver app bar for the desired pull down menu options!
class _UserProfileState extends State<UserProfile> {
  final int followers = 420;
  final int following = 243;
  bool isExpanded = false;
  double containerHeight = 0.2;

  void toggleContainerHeight() {
    setState(() {
      isExpanded = !isExpanded;
      containerHeight = isExpanded ? 0.6 : 0.2;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: spotifyGray,
        leading: ElevatedButton(
          onPressed: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            alignment: Alignment.center,
            shape: MaterialStatePropertyAll(
              CircleBorder(),
            ),
          ),
          child: isDarkMode == true
              ? const Icon(
                  Icons.brightness_2_rounded,
                  size: 30,
                )
              : const Icon(
                  Icons.brightness_4_rounded,
                  size: 30,
                ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(
                CircleBorder(),
              ),
            ),
            child: const Icon(Icons.edit_rounded),
          ),
        ],
      ),
      // backgroundColor: spotifyGray,
      body: SafeArea(
        child: Column(
          children: [
            const Gap(20),
            Center(
              child: CircleAvatar(
                backgroundColor: spotifyDarkGray,
                backgroundImage: AssetImage(
                  "images/charlie_puth.png",
                ),
                radius: width * 0.2,
              ),
            ),
            const Gap(10),
            Text(
              "Username",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}
