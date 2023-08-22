import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomAnimatedButton extends StatefulWidget {
  const CustomAnimatedButton(
      {super.key, required this.captionText, required this.animateIcon});
  final String captionText;
  final IconData animateIcon;

  @override
  State<CustomAnimatedButton> createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          widget.animateIcon,
          size: 30,
        )
            .animate(
              onInit: (controller) => controller.reverse(),
              onComplete: (controller) => controller.repeat(),
            )
            .fade(
              curve: Curves.easeInOut,
              duration: const Duration(
                seconds: 1,
              ),
            )
            .slideY(
              begin: 0.5,
              end: -0.5,
              delay: const Duration(
                milliseconds: 60,
              ),
              duration: const Duration(
                seconds: 2,
              ),
              curve: Curves.bounceOut,
            ),
        Text(
          widget.captionText,
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ],
    );
  }
}
