import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';

class ExploreTile extends StatefulWidget {
  final String url;
  const ExploreTile({required this.url, super.key});

  @override
  State<ExploreTile> createState() => _ExploreTileState();
}

class _ExploreTileState extends State<ExploreTile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.2,
      width: width * 0.2,
      child: Container(
        height: 200,
        width: 130,
        decoration: BoxDecoration(
          color: spotifyDarkGray,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Icon(
          Icons.music_note_rounded,
          size: 60,
          color: Theme.of(context).iconTheme.color,
        ),
        // child: Image.network(widget.url),
      ),
    );
  }
}
