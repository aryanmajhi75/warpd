import 'package:flutter/material.dart';
import 'package:spotify/constants.dart';

class PlaylistItems extends StatefulWidget {
  const PlaylistItems({super.key});

  @override
  State<PlaylistItems> createState() => _PlaylistItemsState();
}

class _PlaylistItemsState extends State<PlaylistItems> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: spotifyGray,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 80,
      child: Row(
        children: [
          ElevatedButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(CircleBorder()),
              fixedSize: MaterialStatePropertyAll(
                Size(5, 5),
              ),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.play_arrow_rounded,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 60,
            width: 140,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Song Name',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Artist Name",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            "0:00",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            width: 15,
          ),
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
              Icons.favorite,
            ),
          ),
        ],
      ),
    );
  }
}
