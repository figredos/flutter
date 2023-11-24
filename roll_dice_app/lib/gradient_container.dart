import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final Color color_1;
  final Color color_2;

  const GradientContainer(this.color_1, this.color_2, {super.key});

  const GradientContainer.red({super.key})
      : color_1 = const Color.fromARGB(255, 255, 17, 0),
        color_2 = const Color.fromARGB(255, 197, 0, 0);

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color_1,
            color_2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
