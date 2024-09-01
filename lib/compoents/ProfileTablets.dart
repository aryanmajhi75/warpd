import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileTablets extends StatelessWidget {
  const ProfileTablets({
    super.key,
    required this.screenWidth,
    required this.name,
    required this.svgPath,
    required this.iconColor,
    required this.iconBgColor,
    required this.ontapFunction,
  });

  final double screenWidth;
  final String name;
  final String svgPath;
  final Color iconColor;
  final Color iconBgColor;
  final VoidCallback ontapFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: screenWidth * 0.9,
      decoration: const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name),
          FilledButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(10),
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
              visualDensity: VisualDensity.comfortable,
              fixedSize: MaterialStatePropertyAll(Size(60, 60)),
              backgroundColor: MaterialStatePropertyAll(
                Colors.grey.withOpacity(0.3),
              ),
              shape: MaterialStatePropertyAll(
                CircleBorder(),
              ),
            ),
            child: SvgPicture.asset(
              svgPath,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}
