import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(222, 255, 0, 0),
        body: GradientContainer(
            color_1: Color.fromARGB(255, 255, 17, 0),
            color_2: Color.fromARGB(255, 253, 39, 39),
            startAlignment: Alignment.topCenter,
            endAlignment: Alignment.bottomCenter),
      ),
    ),
  );
}
