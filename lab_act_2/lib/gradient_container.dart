import 'package:flutter/material.dart';
import 'package:lab_act_2/dice_roller.dart';
import 'styled_text.dart';


class GradientContainer extends StatelessWidget {
const GradientContainer(this.colors,{super.key});
final List<Color> colors;

  var currentDiceImage = 'assets/dice-images/dice-3.png';
  void rollDice(){
      currentDiceImage = 'assets/dice-images/dice-5.png';
  }
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.greenAccent],
        ),
      ),
      child: Center(
        child: DiceRoller()
        ),

    );
  }
}