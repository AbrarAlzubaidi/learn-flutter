import 'package:flutter/material.dart';

const textColor = Colors.white;
const fontSize = 30.0;

class GradientText extends StatelessWidget {
  const GradientText(this.title, {super.key});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(fontSize: fontSize, color: textColor));
  }
}
