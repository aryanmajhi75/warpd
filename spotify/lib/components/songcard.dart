import 'package:flutter/material.dart';

class SongCard extends StatefulWidget {
  const SongCard({super.key});

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.transparent,
      // width: width * 0.9,
      height: height * 0.16,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            margin: const EdgeInsets.all(20),
            color: const Color(0xFF1AB40C),
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  left: 15,
                  child: Text(
                    "PLAYING",
                    style: Theme.of(context).textTheme.displayMedium,
                    // style: TextStyle(
                    // fontFamily: 'Quicksand',
                    // color: Colors.white,
                    // ),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 15,
                  child: SizedBox(
                    height: 20,
                    width: 180,
                    child: Text(
                      "I Don't Think I Like Her",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ), //lyrics to be displayed line-by-line
                ),
                Positioned(
                  top: 75,
                  left: 15,
                  child: Text(
                    "Charlie Puth",
                    style: Theme.of(context).textTheme.displayMedium,
                  ), //lyrics to be displayed line-by-line
                ),
              ],
            ),
          ),
          Positioned(
            right: -10,
            left: 205,
            top: -25,
            bottom: 20,
            child: Image.asset(
                'images/charlie_puth.png'), //change  the name of artist by using a name variable
          ),
        ],
      ),
    );
  }
}
