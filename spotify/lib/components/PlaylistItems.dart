import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/theme/themeProvider.dart';
import 'package:spotify/theme/themes.dart';

class PlaylistItems extends StatefulWidget {
  const PlaylistItems({super.key});

  @override
  State<PlaylistItems> createState() => _PlaylistItemsState();
}

class _PlaylistItemsState extends State<PlaylistItems> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print("Width : $width");
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
          ElevatedButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(CircleBorder()),
              // fixedSize: MaterialStatePropertyAll(
              //   Size(5, 5),
              // ),
              alignment: Alignment.center,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/musicplayer');
            },
            child: const Icon(
              Icons.play_arrow_rounded,
            ),
          ),
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
                const Gap(
                  5,
                ),
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
              alignment: Alignment.center,
              backgroundColor:
                  const MaterialStatePropertyAll(Colors.transparent),
              iconColor: Provider.of<ThemeProvider>(context).getThemeData() ==
                      lightMode
                  ? MaterialStatePropertyAll(spotifyDarkGray)
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
            ),
          ),
        ],
      ),
    );
  }
}
