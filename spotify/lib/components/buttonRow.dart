import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  final bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Repeat Button
        ElevatedButton(
          style: ButtonStyle(
            shape: const MaterialStatePropertyAll(CircleBorder()),
            fixedSize: const MaterialStatePropertyAll(
              Size(5, 5),
            ),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            iconColor: _isPressed
                ? MaterialStatePropertyAll(spotifyGreen)
                : const MaterialStatePropertyAll(Colors.black38),
          ),
          onPressed: () {
            // if (_isPressed) {
            //   setState(() => _isPressed = false);
            // } else {
            //   setState(() => _isPressed = true);
            // }
          },
          child: const Icon(
            Icons.repeat_rounded,
            size: 23,
          ),
        ),

        //Previous Button
        ElevatedButton(
          style: const ButtonStyle(
            shape: MaterialStatePropertyAll(CircleBorder()),
            fixedSize: MaterialStatePropertyAll(
              Size(5, 5),
            ),
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
            fixedSize: const MaterialStatePropertyAll(
              Size(65, 65),
            ),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.only(
                right: 1,
              ),
            ),
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(spotifyGreen),
            iconColor: MaterialStatePropertyAll(spotifyWhite),
          ),
          onPressed: () {
            // if (_isPressed) {
            //   setState(() => _isPressed = false);
            // } else {
            //   setState(() => _isPressed = true);
            // }
          },
          child: const Icon(
            Icons.play_arrow_rounded,
            size: 50,
          ),
        ),

        //Next Button
        ElevatedButton(
          style: const ButtonStyle(
            shape: MaterialStatePropertyAll(CircleBorder()),
            fixedSize: MaterialStatePropertyAll(
              Size(5, 5),
            ),
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
            fixedSize: const MaterialStatePropertyAll(
              Size(5, 5),
            ),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            iconColor: _isPressed
                ? MaterialStatePropertyAll(spotifyGreen)
                : const MaterialStatePropertyAll(Colors.black38),
          ),
          onPressed: () {
            // if (_isPressed) {
            //   setState(() => _isPressed = false);
            // } else {
            //   setState(() => _isPressed = true);
            // }
          },
          child: const Icon(
            Icons.shuffle_rounded,
            size: 23,
          ),
        ),
      ],
    );
  }
}
