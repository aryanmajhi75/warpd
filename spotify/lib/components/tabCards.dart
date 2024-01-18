import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/pages/musicplayer.dart';

class TabCards extends StatefulWidget {
  final String title;
  final String url;
  const TabCards({required this.title, required this.url, super.key});

  @override
  State<TabCards> createState() => _TabCardsState();
}

class _TabCardsState extends State<TabCards> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // print(height);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const MusicPlayer(imageUrl: "images/loser.jpg"),
          ),
        );
      },
      child: SizedBox(
        height: height * 0.02,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                height: height * 0.2,
                width: height * 0.2,
                decoration: BoxDecoration(
                  color: spotifyGray,
                ),
                child: Image.asset(
                  widget.url,
                ),
              ),
            ),
            Positioned(
              top: height * 0.18,
              left: width * 0.3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const MusicPlayer(imageUrl: "images/loser.jpg"),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    spotifyGray,
                    // Colors.transparent,
                  ),
                  shape: const MaterialStatePropertyAll(CircleBorder()),
                  animationDuration: const Duration(
                    seconds: 1,
                  ),
                  alignment: Alignment.center,
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: spotifyDarkGray,
                  size: 30,
                ),
              ),
            ),
            Gap(height * 0.01),
            Positioned(
              top: height * 0.21,
              left: width * 0.1,
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
