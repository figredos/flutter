import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  final Color color_1;
  final Color color_2;
  final Alignment startAlignment;
  final Alignment endAlignment;

  const GradientContainer(
      {required this.color_1, required this.color_2, required this.startAlignment, required this.endAlignment,
      super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color_1,
            color_2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(
          'Hello, World!',
        ),
      ),
    );
  }
}
