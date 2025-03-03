import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  // ** pass it as named parameter
  // final Function changeScreen;
  // const HomePageBody({super.key, this.changeScreen});

  // ** pass it as positional parameter
  const HomePageBody(this.changeScreen, {super.key});

  final void Function() changeScreen;

  final textColor = const Color.fromARGB(255, 243, 202, 253);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(165, 218, 174, 239),
        ),
        const SizedBox(height: 70),
        Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
              color: textColor, fontSize: 25.0, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: changeScreen,
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(color: textColor, width: 1.0)),
          ),
          icon: Icon(
            Icons.play_arrow_rounded,
            color: textColor,
          ),
          label: Text(
            'Start Quiz',
            style: TextStyle(color: textColor),
          ),
        ),
      ],
    );
  }
}
