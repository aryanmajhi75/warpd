import 'package:flutter/material.dart';
import 'package:warpd/compoents/customCard.dart';

class SAAGGrid extends StatefulWidget {
  const SAAGGrid({super.key});

  @override
  State<SAAGGrid> createState() => _SAAGGridState();
}

class _SAAGGridState extends State<SAAGGrid> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.5,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: const [
          CustomCard(
            imgPath: "somethig",
            title: "Songs",
          ),
          CustomCard(
            imgPath: "somethig",
            title: "Albums",
          ),
          CustomCard(
            imgPath: "somethig",
            title: "Artists",
          ),
          CustomCard(
            imgPath: "somethig",
            title: "Genre",
          ),
        ],
      ),
    );
  }
}
