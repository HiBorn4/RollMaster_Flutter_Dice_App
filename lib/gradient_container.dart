import 'package:flutter/material.dart';
import 'package:basics/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(MaterialColor deepPurple, MaterialColor indigo,
      {Key? key})
      : color1 = Colors.grey, // Set color1 to grey
        color2 = Colors.grey, // Set color2 to grey
        super(key: key);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
