import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:warpd/compoents/ProfileTablets.dart';
import 'package:warpd/util/colors.dart';
import 'package:warpd/util/spacing.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.3,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onLongPress: () {},
                    child: CircleAvatar(
                      radius: screenHeight * 0.05,
                      backgroundImage: AssetImage(
                        "assets/images/loser.jpg",
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.7,
                    decoration: const BoxDecoration(
                      color: WarpdColors.primary,
                      borderRadius: WarpdBorderRadius.rad30,
                    ),
                    child: Center(
                      child: Text(
                        "somename@gmail.com",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(screenHeight * 0.01),
            ProfileTablets(
              name: "Personal Info",
              screenWidth: screenWidth,
              svgPath: "assets/icons/outline/arrow-right-1.svg",
              iconColor: WarpdColors.primary,
              iconBgColor: Colors.black54,
              ontapFunction: () {},
            ),
            Gap(screenHeight * 0.01),
            ProfileTablets(
              name: "Theme",
              screenWidth: screenWidth,
              svgPath: "assets/icons/outline/arrow-right-1.svg",
              iconColor: WarpdColors.primary,
              iconBgColor: Colors.black54,
              ontapFunction: () {},
            ),
            Gap(screenHeight * 0.01),
            ProfileTablets(
              name: "Statistics",
              screenWidth: screenWidth,
              svgPath: "assets/icons/outline/arrow-right-1.svg",
              iconColor: WarpdColors.primary,
              iconBgColor: Colors.black54,
              ontapFunction: () {},
            ),
            Gap(screenHeight * 0.01),
            ProfileTablets(
              name: "Logout",
              screenWidth: screenWidth,
              svgPath: "assets/icons/outline/logout.svg",
              iconColor: Colors.red,
              iconBgColor: Colors.black38,
              ontapFunction: () {},
            ),
            Gap(screenHeight * 0.05),
            ClipRRect(
              borderRadius: WarpdBorderRadius.rad30,
              child: Image.asset(
                "assets/images/warpd-fullLogo.png",
                width: screenWidth * 0.5,
              ),
            ),
            const Text("Developed by"),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Aryan Majhi"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
