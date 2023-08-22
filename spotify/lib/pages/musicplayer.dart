import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spotify/components/buttonRow.dart';
import 'package:spotify/components/customAnimatedButton.dart';
import 'package:spotify/constants.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  final ScrollController _scrollController = ScrollController();
  bool _isPressed = false;
  final Duration _totalDuration = Duration(
    minutes: 4,
    seconds: 02,
  );
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.more_vert_rounded,
            size: 30,
          ),
        ],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text(
          "Now playing",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (_scrollController.position.userScrollDirection ==
                  ScrollDirection.forward) {
                setState(() {
                  _isVisible = true;
                });
              } else if (_scrollController.position.userScrollDirection ==
                  ScrollDirection.reverse) {
                setState(() {
                  _isVisible = false;
                });
                // } else {
                //   setState(() {
                //     _isVisible = true;
                //   });
              }
              return true;
            },
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: deviceHeight * 0.45,
                    width: deviceWidth * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amberAccent,
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      Positioned(
                        left: 10,
                        child: SizedBox(
                          height: deviceHeight * 0.07,
                          width: deviceWidth * 0.73,
                          // color: Colors.amber[900],
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Song Name",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                "Artist",
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth * 0.026,
                      ),
                      //Favourite button
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: const MaterialStatePropertyAll(CircleBorder()),
                          fixedSize: const MaterialStatePropertyAll(
                            Size(5, 5),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                              Colors.transparent),
                          iconColor: _isPressed
                              ? MaterialStatePropertyAll(spotifyGreen)
                              : const MaterialStatePropertyAll(Colors.black38),
                        ),
                        onPressed: () {
                          if (_isPressed) {
                            setState(() => _isPressed = false);
                          } else {
                            setState(() => _isPressed = true);
                          }
                        },
                        child: _isPressed
                            ? const Icon(Icons.favorite_rounded)
                            : const Icon(Icons.favorite_border_rounded),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ProgressBar(
                      progress: const Duration(
                        seconds: 0,
                      ),
                      total: _totalDuration,
                      barHeight: 3,
                      progressBarColor: spotifyDarkGray,
                      thumbColor: spotifyDarkGray,
                      thumbRadius: 7,
                      baseBarColor: spotifyGray,
                      thumbGlowRadius: 0,
                      timeLabelTextStyle:
                          Theme.of(context).textTheme.displayMedium,
                      timeLabelPadding: 5,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.03,
                  ),
                  const ButtonRow(),
                  SizedBox(
                    height: deviceHeight * 0.07,
                  ),
                  Visibility(
                    visible: _isVisible,
                    child: const CustomAnimatedButton(
                      captionText: "Lyrics",
                      animateIcon: Icons.keyboard_arrow_up_rounded,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber[900],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: deviceWidth * 0.8,
                    height: 400,
                    // child: Text("Lyrics"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
