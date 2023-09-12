import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

//use sliver app bar for the desired pull down menu options!
class _UserProfileState extends State<UserProfile> {
  final int followers = 420;
  final int following = 243;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: spotifyGray,
      body: SafeArea(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}


                // Container(
                //   padding: const EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: spotifyWhite,
                //     borderRadius: const BorderRadius.only(
                //       bottomLeft: Radius.circular(50),
                //       bottomRight: Radius.circular(50),
                //     ),
                //   ),
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           ElevatedButton(
                //             style: ButtonStyle(
                //               shape: const MaterialStatePropertyAll(
                //                   CircleBorder()),
                //               backgroundColor:
                //                   MaterialStatePropertyAll(spotifyGray),
                //               iconColor:
                //                   MaterialStatePropertyAll(spotifyDarkGray),
                //             ),
                //             onPressed: () {
                //               Navigator.pop(context);
                //             },
                //             child: const Icon(
                //               Icons.arrow_back_ios_new_rounded,
                //               size: 23,
                //             ),
                //           ),
                //           Text(
                //             "Profile",
                //             style: Theme.of(context).textTheme.headlineMedium,
                //           ),
                //           ElevatedButton(
                //             style: ButtonStyle(
                //               shape: const MaterialStatePropertyAll(
                //                   CircleBorder()),
                //               backgroundColor: const MaterialStatePropertyAll(
                //                   Colors.transparent),
                //               iconColor:
                //                   MaterialStatePropertyAll(spotifyDarkGray),
                //             ),
                //             onPressed: () {
                //               // Navigator.pop(context);
                //             },
                //             child: const Icon(
                //               Icons.more_vert_rounded,
                //               size: 23,
                //             ),
                //           ),
                //         ],
                //       ),
                //       SizedBox(
                //         height: deviceHeight * 0.01,
                //       ),
                //       Container(
                //         height: deviceHeight * 0.1,
                //         decoration: const BoxDecoration(
                //           color: Colors.amber,
                //           shape: BoxShape.circle,
                //         ),
                //       ),
                //       SizedBox(
                //         height: deviceHeight * 0.01,
                //       ),
                //       Text(
                //         "Email@email.com",
                //         style: Theme.of(context).textTheme.displayMedium,
                //       ),
                //       SizedBox(
                //         height: deviceHeight * 0.01,
                //       ),
                //       Text(
                //         "Username",
                //         style: Theme.of(context).textTheme.headlineMedium,
                //       ),
                //       SizedBox(
                //         height: deviceHeight * 0.01,
                //       ),
                //       SizedBox(
                //         height: deviceHeight * 0.005,
                //         child: Container(
                //           width: deviceWidth * 0.15,
                //           decoration: BoxDecoration(
                //             color: spotifyDarkGray,
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),