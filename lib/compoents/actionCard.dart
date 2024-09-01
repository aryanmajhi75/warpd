import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:warpd/util/colors.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.ontapFunction,
    required this.primaryBtnIcon,
  });

  final double screenHeight;
  final double screenWidth;
  final VoidCallback ontapFunction;
  final SvgPicture primaryBtnIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.25,
      width: screenWidth,
      child: Card(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: WarpdColors.accentGray,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 10,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Song Name"),
                  Text("Artist Name"),
                  Text("Album"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                verticalDirection: VerticalDirection.down,
                children: [
                  FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
                      visualDensity: VisualDensity.comfortable,
                      fixedSize: const MaterialStatePropertyAll(
                        Size(80, 80),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        // Color(0xff000000),
                        WarpdColors.primary.withOpacity(0.5),
                      ),
                      shape: const MaterialStatePropertyAll(
                        CircleBorder(
                          side: BorderSide(),
                        ),
                      ),
                    ),
                    child: primaryBtnIcon,
                  ),
                  FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.zero),
                      visualDensity: VisualDensity.comfortable,
                      fixedSize: MaterialStatePropertyAll(Size(80, 80)),
                      backgroundColor: MaterialStatePropertyAll(
                        WarpdColors.accentGray,
                      ),
                      shape: MaterialStatePropertyAll(
                        CircleBorder(
                          side: BorderSide(),
                        ),
                      ),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/outline/arrow-right-1.svg",
                      color: WarpdColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendedTile1 extends StatelessWidget {
  const RecommendedTile1({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: screenHeight * 0.2,
          width: screenWidth,
          child: Card(
            color: Colors.black87,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Song Name"),
                  Text("Artist Name"),
                  Text("Album"),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                visualDensity: VisualDensity.comfortable,
                fixedSize: const MaterialStatePropertyAll(Size(60, 60)),
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xff000000),
                ),
                shape: MaterialStatePropertyAll(
                  CircleBorder(),
                ),
              ),
              child: SvgPicture.asset(
                "assets/icons/outline/heart.svg",
                color: Color(0xff04D9FF),
              ),
            ),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                visualDensity: VisualDensity.comfortable,
                fixedSize: MaterialStatePropertyAll(
                  Size(120, 60),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xff04D9FF).withOpacity(0.5),
                ),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Play this"),
                  SvgPicture.asset(
                    "assets/icons/fill/play-circle.svg",
                    height: 40,
                    // color: Color(0xff04D9FF),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
