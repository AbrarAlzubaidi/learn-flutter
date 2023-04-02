import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const QuestionApp());
}

// void main () => runApp(const QuestionApp());

class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key}); // create constructor
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Question App',
          style: TextStyle(color: Color.fromARGB(255, 10, 10, 10)),
        ),
        backgroundColor: const Color.fromARGB(255, 248, 203, 143),
      ),
      body: Row(children: const [
        Text(
          'the body goes here',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
        ElevatedButton(
            onPressed: null,
            child:
                Text('click me!', style: TextStyle(color: Color(0xFFFFFFFF)))),
      ]),
      backgroundColor: const Color(0xFFFF9000),
    ));
  }
}
