import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:warpd/util/colors.dart";
import "package:warpd/util/spacing.dart";

class CustomCard extends StatefulWidget {
  final String imgPath;
  final String title;
  const CustomCard({
    super.key,
    required this.imgPath,
    required this.title,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: WarpdBorderRadius.rad30,
        side: BorderSide(
          color: WarpdColors.primary,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        // alignment: Alignment.center,
        children: [
          // Ink.image(
          //   image: AssetImage("assets/images/loser.jpg"),
          //   fit: BoxFit.cover,
          //   height: screenHeight * 0.18,
          //   width: screenWidth * 0.45,
          // ),
          Center(
            child: Text(
              widget.title,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.01,
            left: screenWidth * 0.3,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.black,
              child: SvgPicture.asset(
                "assets/icons/outline/arrow-right-1.svg",
                color: WarpdColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
