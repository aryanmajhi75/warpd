import 'package:flutter/material.dart';

class TabCards extends StatefulWidget {
  const TabCards({super.key});

  @override
  State<TabCards> createState() => _TabCardsState();
}

class _TabCardsState extends State<TabCards> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          Container(
            height: 170,
            width: 130,
            decoration: BoxDecoration(
              color: const Color(0xFFDAD7D7),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Positioned(
            top: 145,
            left: 70,
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(
                  Size(3, 3),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFFBBB8B8),
                  // Colors.transparent,
                ),
                shape: MaterialStatePropertyAll(CircleBorder()),
                animationDuration: Duration(
                  seconds: 1,
                ),
                alignment: Alignment.center,
              ),
              child: const Icon(
                Icons.play_arrow_rounded,
                color: Color(0xFF383838),
                size: 30,
              ),
            ),
          ),
          Positioned(
            top: 185,
            left: 10,
            child: Text(
              "Artist Name",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}
