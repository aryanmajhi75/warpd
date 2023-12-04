import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/theme/themeProvider.dart';
import 'package:spotify/theme/themes.dart';

class AppTweeks extends StatefulWidget {
  const AppTweeks({super.key});

  @override
  State<AppTweeks> createState() => _AppTweeksState();
}

class _AppTweeksState extends State<AppTweeks> {
  @override
  Widget build(BuildContext context) {
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
                Text("Dark Mode?",
                    style: Theme.of(context).textTheme.displayLarge),
                Switch.adaptive(
                  value: Provider.of<ThemeProvider>(context).getThemeData() ==
                          darkMode
                      ? true
                      : false,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme();
                  },
                ),
              ],
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
