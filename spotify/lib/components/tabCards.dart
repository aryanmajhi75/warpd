import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';

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
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // print(height);
    return SizedBox(
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
            top: height * 0.17,
            left: height * 0.12,
            child: ElevatedButton(
              onPressed: () {},
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
          Positioned(
            top: 185,
            left: 10,
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}
