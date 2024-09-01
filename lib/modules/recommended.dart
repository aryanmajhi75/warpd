import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warpd/compoents/actionCard.dart';
import 'package:warpd/util/colors.dart';

class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommended'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ActionCard(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  primaryBtnIcon: SvgPicture.asset(
                    "assets/icons/outline/heart.svg",
                    color: WarpdColors.primary,
                    height: 30,
                  ),
                  ontapFunction: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
