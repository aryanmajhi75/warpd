import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/theme/themeProvider.dart';
import 'package:spotify/theme/themes.dart';
import 'package:tab_container/tab_container.dart';

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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
              style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(
                  Size(
                    3,
                    3,
                  ),
                ),
                visualDensity: VisualDensity.standard,
                elevation: MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                // alignment: Alignment.center,
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
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
          ),
        ],
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
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Provider.of<ThemeProvider>(context)
                                    .getThemeData() ==
                                lightMode
                            ? spotifyGray
                            : spotifyDarkGray,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Provider.of<ThemeProvider>(context)
                                    .getThemeData() ==
                                lightMode
                            ? spotifyGray
                            : spotifyDarkGray,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Provider.of<ThemeProvider>(context)
                                    .getThemeData() ==
                                lightMode
                            ? spotifyGray
                            : spotifyDarkGray,
                      ),
                    ),
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
