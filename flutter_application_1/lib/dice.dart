import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_text.dart';
import 'dart:math';

// why we initialize randomizer here? rather than in the rollDice method?
// because we want to create a single instance of Random class and use it in the rollDice method, we dont want to call the random method every time we roll the dice.
// for more optimization, we can use the same instance of Random class in the whole application.
final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{
  final title = 'Welcome Abrar!';

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.green.shade100,
    foregroundColor: Colors.black,
    textStyle: const TextStyle(fontSize: 20),
  );

  var activeDiceRoll = 1;

  void rollDice() {
    setState(() {
      activeDiceRoll = randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            GradientText(title),
            const SizedBox(height: 20),
            Image.asset('assets/dice-images/dice-$activeDiceRoll.png',
                width: 200, height: 200),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: rollDice,
                  style: buttonStyle,
                  child: const Text('roll dice')),
            )
          ],
        );
  }
}