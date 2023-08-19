import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:spotify/components/buttonRow.dart';
import 'package:spotify/constants.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool _isPressed = false;
  final Duration _totalDuration = Duration(
    minutes: 4,
    seconds: 02,
  );
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
          child: Column(
            children: [
              Container(
                height: deviceHeight * 0.45,
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
                      width: deviceWidth * 0.73,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Song Name",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            "Artist",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  //Favourite button
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(CircleBorder()),
                      fixedSize: const MaterialStatePropertyAll(
                        Size(5, 5),
                      ),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.transparent),
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
                    child: const Icon(
                      Icons.favorite_border_outlined,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
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
                  timeLabelTextStyle: Theme.of(context).textTheme.displayMedium,
                  timeLabelPadding: 5,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ButtonRow(),
            ],
          ),
        ),
      ),
    );
  }
}
