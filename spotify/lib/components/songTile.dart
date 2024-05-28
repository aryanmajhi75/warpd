import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/theme/themeProvider.dart';
import 'package:spotify/theme/themes.dart';

class SongTile extends StatefulWidget {
  const SongTile({super.key});

  @override
  State<SongTile> createState() => _SongTileState();
}

class _SongTileState extends State<SongTile> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // print("Width : $width");
    return Container(
      decoration: BoxDecoration(
        color: Provider.of<ThemeProvider>(context).getThemeData() == lightMode
            ? spotifyGray
            : spotifyBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      height: height * 0.09,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "images/loser.jpg",
              height: height * 0.08,
            ),
          ),
          const Gap(10),
          Container(
            height: height * 0.07,
            width: width * 0.37,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Song Name',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Gap(5),
                Text(
                  "Artist Name",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
          Text(
            "00:00",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const Gap(
            4,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: const MaterialStatePropertyAll(
                CircleBorder(),
              ),
              overlayColor: MaterialStatePropertyAll(
                spotifyGreen.withOpacity(0.3),
              ),
              // alignment: Alignment.center,
              // padding: const MaterialStatePropertyAll(EdgeInsets.all(1)),
              iconColor: Provider.of<ThemeProvider>(context).getThemeData() ==
                      lightMode
                  ? _isPressed == true
                      ? MaterialStatePropertyAll(spotifyGreen)
                      : MaterialStatePropertyAll(spotifyDarkGray)
                  : _isPressed == true
                      ? MaterialStatePropertyAll(spotifyGreen)
                      : MaterialStatePropertyAll(spotifyGray),
            ),
            onPressed: () {
              if (_isPressed) {
                setState(() => _isPressed = false);
              } else {
                setState(() => _isPressed = true);
              }
            },
            child: const Icon(
              Icons.favorite,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
