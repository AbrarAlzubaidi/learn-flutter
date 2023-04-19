import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const QuestionApp());
}

// void main () => runApp(const QuestionApp());

class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key}); // create constructor
  static var questionList = [
    'when we will leave?',
    'what will we eat today?',
    'do i feel boaring?'
  ];
  static var questionIndex = 0;
  void questionAnswer() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

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
      body: Column(children: [
        Text(
          questionList[questionIndex],
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
        ElevatedButton(
            onPressed: questionAnswer,
            child: const Text('Answer 1',
                style: TextStyle(color: Color(0xFFFFFFFF)))),
        ElevatedButton(
            onPressed: questionAnswer,
            // onPressed: answerQuestion(),
            child: const Text('Answer 2',
                style: TextStyle(color: Color(0xFFFFFFFF)))),
        ElevatedButton(
            onPressed: questionAnswer,
            // onPressed: answerQuestion(),
            child: const Text('Answer 3',
                style: TextStyle(color: Color(0xFFFFFFFF)))),
      ]),
      backgroundColor: const Color(0xFFFF9000),
    ));
  }
}
