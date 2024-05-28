import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';

class ButtonRow extends StatefulWidget {
  const ButtonRow({super.key});

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  bool _isPlaying = false;
  bool _isShuffle = false;
  int repeat = 0;
  Icon repeatButton = const Icon(
    Icons.repeat_rounded,
    size: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Repeat Button
        FloatingActionButton.small(
          backgroundColor: spotifyWhite,
          foregroundColor: repeat != 0 ? spotifyGreen : spotifyDarkGray,
          onPressed: () {
            if (repeat == 0) {
              //repeat off
              setState(() {
                repeatButton = const Icon(Icons.repeat_rounded);
                repeat = 1;
              });
            } else if (repeat == 1) //repeat all songs
            {
              setState(() {
                repeatButton = const Icon(Icons.repeat_one_rounded);
                repeat = 2;
              });
            } else if (repeat == 2) //repeat current song
            {
              setState(() {
                repeatButton = const Icon(Icons.repeat_rounded);
                repeat = 0;
              });
            }
          },
          child: repeatButton,
        ),

        //Previous Button
        FloatingActionButton.small(
          onPressed: () {
            // if (_isPressed) {
            //   setState(() => _isPressed = false);
            // } else {
            //   setState(() => _isPressed = true);
            // }
          },
          child: const Icon(
            Icons.skip_previous_rounded,
            size: 40,
          ),
        ),

        //Pause/Play Button
        FloatingActionButton.large(
          onPressed: () {
            setState(() {
              _isPlaying = !_isPlaying;
            });
          },
          child: _isPlaying
              ? const Icon(
                  Icons.pause_rounded,
                  size: 60,
                )
              : const Icon(
                  Icons.play_arrow_rounded,
                  size: 60,
                ),
        ),

        //Next Button
        FloatingActionButton.small(
          onPressed: () {
            // if (_isPressed) {
            //   setState(() => _isPressed = false);
            // } else {
            //   setState(() => _isPressed = true);
            // }
          },
          child: const Icon(
            Icons.skip_next_rounded,
            size: 40,
          ),
        ),

        //Shuffle Songs
        FloatingActionButton.small(
          backgroundColor: spotifyWhite,
          foregroundColor: _isShuffle == false ? spotifyDarkGray : spotifyGreen,
          onPressed: () {
            if (_isShuffle) {
              setState(() => _isShuffle = false);
            } else {
              setState(() => _isShuffle = true);
            }
          },
          child: const Icon(
            Icons.shuffle_rounded,
            size: 30,
          ),
        ),
      ],
    );
  }
}
