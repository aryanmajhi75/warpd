import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warpd/util/colorFilter.dart';
import 'package:warpd/util/colors.dart';
import 'package:warpd/util/spacing.dart';

class PlayingCard extends StatefulWidget {
  const PlayingCard({super.key});

  @override
  State<PlayingCard> createState() => _PlayingCardState();
}

class _PlayingCardState extends State<PlayingCard> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Playing",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        ClipRRect(
          borderRadius: WarpdBorderRadius.rad30,
          child: Container(
            height: screenHeight * 0.25,
            // width: screenWidth * 0.95,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/loser.jpg"),
                colorFilter: ColorFilters.greyScale,
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Song Name"),
                      Text("Artist"),
                      Text("Album"),
                    ],
                  ),
                  FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      // iconSize: MaterialStatePropertyAll(30),
                      padding: MaterialStatePropertyAll(EdgeInsets.zero),
                      visualDensity: VisualDensity.comfortable,
                      fixedSize: MaterialStatePropertyAll(Size(80, 80)),
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFF000000),
                      ),
                      shape: MaterialStatePropertyAll(
                        CircleBorder(
                          side: BorderSide(),
                        ),
                      ),
                    ),
                    // child: Icon(
                    //   Icons.arrow_right_alt_rounded,
                    //   color: Color(0xff04D9FF),
                    //   size: 50,
                    // ),
                    child: SvgPicture.asset(
                      "assets/icons/outline/arrow-right-1.svg",
                      color: WarpdColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
