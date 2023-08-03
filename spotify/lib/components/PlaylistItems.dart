import 'package:flutter/material.dart';

class PlaylistItems extends StatefulWidget {
  const PlaylistItems({super.key});

  @override
  State<PlaylistItems> createState() => _PlaylistItemsState();
}

class _PlaylistItemsState extends State<PlaylistItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          ElevatedButton(
            style: const ButtonStyle(
              fixedSize: MaterialStatePropertyAll(
                Size(5, 5),
              ),
            ),
            onPressed: () {},
            child: const Icon(
              Icons.play_arrow_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
