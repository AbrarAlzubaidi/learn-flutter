import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colorsTheme,
  });

  final List<Color> colorsTheme;

  @override
  Widget build(BuildContext context) {
    const title = 'Welcome to Roll Dice game!';

    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green.shade100,
      foregroundColor: Colors.black,
      textStyle: const TextStyle(fontSize: 20),
    );
    void rollDice() {
      print('Rolling dice...');
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsTheme,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            const GradientText(title),
            const SizedBox(height: 20),
            Image.asset('assets/dice-images/dice-1.png',
                width: 200, height: 200),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: rollDice,
                  style: buttonStyle,
                  child: const Text('roll dice')),
            ),
          ],
        ),
      ),
    );
  }
}
