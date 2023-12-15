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
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Repeat Button
        ElevatedButton(
          style: ButtonStyle(
            shape: const MaterialStatePropertyAll(CircleBorder()),

            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            animationDuration: const Duration(seconds: 1),
            // padding: const MaterialStatePropertyAll(EdgeInsets.all(20)),
            iconColor: repeat == 0
                ? const MaterialStatePropertyAll(Colors.black38)
                : MaterialStatePropertyAll(spotifyGreen),
          ),
          onPressed: () {
            if (repeat == 0) {
              //repeat off
              setState(() {
                repeat = 1;
                repeatButton = const Icon(Icons.repeat_rounded);
              });
            } else if (repeat == 1) //repeat all songs
            {
              setState(() {
                repeat = 2;
                repeatButton = const Icon(Icons.repeat_one_rounded);
              });
            } else if (repeat == 2) //repeat current song
            {
              setState(() {
                repeat = 0;
                repeatButton = const Icon(Icons.repeat_rounded);
              });
            }
          },
          child: repeatButton,
        ),

        //Previous Button
        ElevatedButton(
          style: const ButtonStyle(
            shape: MaterialStatePropertyAll(CircleBorder()),
            // fixedSize: MaterialStatePropertyAll(
            //   Size(25, 25),
            // ),
            animationDuration: Duration(seconds: 1),
            // padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            iconColor: MaterialStatePropertyAll(Colors.black),
          ),
          onPressed: () {
            // if (_isPressed) {
            //   setState(() => _isPressed = false);
            // } else {
            //   setState(() => _isPressed = true);
            // }
          },
          child: const Icon(
            Icons.skip_previous_rounded,
            size: 30,
          ),
        ),

        //Pause/Play Button
        ElevatedButton(
          style: ButtonStyle(
            shape: const MaterialStatePropertyAll(
              CircleBorder(),
            ),
            // fixedSize: const MaterialStatePropertyAll(
            //   Size(65, 65),
            // ),
            // padding: const MaterialStatePropertyAll(
            //   EdgeInsets.only(
            //     right: 1,
            //   ),
            // ),
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(spotifyGreen),
            iconColor: MaterialStatePropertyAll(spotifyWhite),
          ),
          onPressed: () {
            if (_isPlaying) {
              setState(() => _isPlaying = false);
            } else {
              setState(() => _isPlaying = true);
            }
          },
          child: _isPlaying
              ? const Icon(
                  Icons.pause_rounded,
                  size: 50,
                )
              : const Icon(
                  Icons.play_arrow_rounded,
                  size: 50,
                ),
        ),

        //Next Button
        ElevatedButton(
          style: const ButtonStyle(
            shape: MaterialStatePropertyAll(CircleBorder()),
            // fixedSize: MaterialStatePropertyAll(
            //   Size(5, 5),
            // ),
            animationDuration: Duration(seconds: 1),
            // padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            iconColor: MaterialStatePropertyAll(Colors.black),
          ),
          onPressed: () {
            // if (_isPressed) {
            //   setState(() => _isPressed = false);
            // } else {
            //   setState(() => _isPressed = true);
            // }
          },
          child: const Icon(
            Icons.skip_next_rounded,
            size: 30,
          ),
        ),

        //Shuffle Songs
        ElevatedButton(
          style: ButtonStyle(
            shape: const MaterialStatePropertyAll(CircleBorder()),
            // fixedSize: const MaterialStatePropertyAll(
            //   Size(5, 5),
            // ),
            animationDuration: const Duration(seconds: 1),
            // padding: const MaterialStatePropertyAll(EdgeInsets.all(20)),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            iconColor: _isShuffle
                ? MaterialStatePropertyAll(spotifyGreen)
                : const MaterialStatePropertyAll(Colors.black38),
          ),
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
