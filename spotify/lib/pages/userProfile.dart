import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:spotify/components/appSettings.dart';
import 'package:spotify/components/appTweeks.dart';
import 'package:spotify/components/userDetails.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/theme/themeProvider.dart';
import 'package:spotify/theme/themes.dart';
import 'package:tab_container/tab_container.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

String username = "Aryan Majhi";
String gmail = "majhiaryan13@gmail.com";
String phone = "+916000639353";

class _UserProfileState extends State<UserProfile> {
  final int followers = 420;
  final int following = 243;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          "images/Spotify_Logo.png",
          height: 30,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
              ElevatedButton(
                style: ButtonStyle(
                  visualDensity: VisualDensity.comfortable,
                  animationDuration: const Duration(seconds: 2),
                  overlayColor: MaterialStatePropertyAll(
                    spotifyGreen.withOpacity(0.5),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.all(15),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Change Profile Picture",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              const Gap(30),
              SizedBox(
                height: height * 0.4,
                child: TabContainer(
                  tabEdge: TabEdge.left,
                  color: Provider.of<ThemeProvider>(context).getThemeData() ==
                          lightMode
                      ? spotifyGray
                      : spotifyDarkGray,
                  // tabExtent: height * 0.5,
                  radius: 20,
                  enabled: true,
                  tabs: _getTabs(context),
                  isStringTabs: false,
                  children: const <Widget>[
                    UserDetails(),
                    AppTweeks(),
                    AppSettings(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _getTabs(BuildContext context) => const <Widget>[
      Icon(Icons.person_rounded),
      Icon(Icons.insert_chart_outlined_rounded),
      Icon(Icons.settings_rounded),
    ];
