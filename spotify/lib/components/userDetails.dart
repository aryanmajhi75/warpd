import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/pages/userProfile.dart';
import 'package:spotify/theme/themeProvider.dart';
import 'package:spotify/theme/themes.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(5),
        color: Provider.of<ThemeProvider>(context).getThemeData() == lightMode
            ? spotifyGray
            : spotifyDarkGray,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Username :",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  username,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                IconButton(
                  alignment: Alignment.center,
                  visualDensity: VisualDensity.compact,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: const EdgeInsets.all(10),
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  label: Text(
                                    "Enter new username",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    username = value;
                                  });
                                },
                                keyboardType: TextInputType.name,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.check_rounded),
                              )
                            ],
                          );
                        });
                  },
                  icon: const Icon(
                    Icons.mode_edit_rounded,
                    size: 20,
                  ),
                ),
              ],
            ),
            const Gap(10),
            Divider(
              color:
                  Provider.of<ThemeProvider>(context).getThemeData() == darkMode
                      ? spotifyGray
                      : spotifyDarkGray,
              indent: width * 0.1,
              endIndent: width * 0.1,
              thickness: 2,
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Email :",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  gmail,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            ),
            const Gap(10),
            Divider(
              color:
                  Provider.of<ThemeProvider>(context).getThemeData() == darkMode
                      ? spotifyGray
                      : spotifyDarkGray,
              indent: width * 0.1,
              endIndent: width * 0.1,
              thickness: 2,
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Phone number :",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  phone,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            ),
            const Gap(10),
            Divider(
              color:
                  Provider.of<ThemeProvider>(context).getThemeData() == darkMode
                      ? spotifyGray
                      : spotifyDarkGray,
              indent: width * 0.1,
              endIndent: width * 0.1,
              thickness: 2,
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Country :",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                CountryFlag.fromCountryCode(
                  'IN',
                  height: height * 0.1,
                  width: width * 0.1,
                ),
              ],
            ),
            const Gap(10),
            Divider(
              color:
                  Provider.of<ThemeProvider>(context).getThemeData() == darkMode
                      ? spotifyGray
                      : spotifyDarkGray,
              indent: width * 0.1,
              endIndent: width * 0.1,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
