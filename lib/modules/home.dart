import 'package:flutter/material.dart';
import 'package:warpd/compoents/SAAGgrid.dart';
import 'package:warpd/compoents/currentPlayingCard.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warpd/util/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animateController;
  late Animation _leftAnimation;

  @override
  void initState() {
    _animateController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _leftAnimation = Tween(begin: 0.0, end: 1.0).animate(_animateController)
      ..addListener(() {
        setState(() {});
      });
    _animateController.repeat(
      reverse: true,
      period: const Duration(seconds: 3),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        centerTitle: true,
        actions: [
          FilledButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
              visualDensity: VisualDensity.comfortable,
              fixedSize: MaterialStatePropertyAll(
                Size(50, 50),
              ),
              backgroundColor: MaterialStatePropertyAll(
                Colors.grey.withOpacity(0.5),
              ),
              shape: const MaterialStatePropertyAll(
                CircleBorder(
                  side: BorderSide(),
                ),
              ),
            ),
            // child: const Icon(
            //   Icons.notifications,
            //   color: Color(0xff04D9FF),
            // ),
            child: SvgPicture.asset(
              "assets/icons/outline/lamp.svg",
              color: WarpdColors.primary,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(5),
          height: screenHeight,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PlayingCard(),
                Gap(screenHeight * 0.02),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: screenWidth * 0.95,
                    height: screenHeight * 0.08,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: const [
                          Color(0xff04D9FF),
                          Color(0xFF000000),
                        ],
                        // begin: Alignment.centerLeft,
                        // end: Alignment.centerRight,
                        stops: [
                          _leftAnimation.value - 0.5,
                          _leftAnimation.value + 1.0,
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Looking for Songs ?",
                          style: TextStyle(color: Colors.white),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                          child: SvgPicture.asset(
                            "assets/icons/outline/search-normal.svg",
                            color: Color(0xff04D9FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(screenHeight * 0.02),
                SAAGGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
