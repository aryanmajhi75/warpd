import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/pages/userProfile.dart';
import 'package:spotify/theme/themeProvider.dart';
import 'package:spotify/theme/themes.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Provider.of<ThemeProvider>(context).getThemeData() == lightMode
            ? spotifyGray
            : spotifyDarkGray,
        child: Column(
          children: [
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Log Out?",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                IconButton(
                  icon: Icon(
                    Icons.power_settings_new_rounded,
                    color: Colors.red[800],
                  ),
                  // highlightColor: spotifyGreen,
                  // color: Colors.red[800],
                  iconSize: 35,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(const Duration(seconds: 1), () {
                          Navigator.of(context).pop();
                        });
                        return AlertDialog.adaptive(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          title: Text("See you soon $username !"),
                          titleTextStyle:
                              Theme.of(context).textTheme.displayLarge,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
