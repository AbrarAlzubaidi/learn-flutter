import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const QuestionApp());
}

class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key}); // create constructor
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Welcome itnto Question App'),
    );
  }
}
