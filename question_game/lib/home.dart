import 'package:flutter/material.dart';
import 'package:question_game/home_body.dart';


class QuestionApp extends StatefulWidget{
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState(){
    return _QuestionAppState();
  }
}

class _QuestionAppState extends State<QuestionApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 55, 28, 130),
                  Color.fromARGB(255, 109, 11, 170)
                ]),
          ),
          child: const Center(
            child: HomePageBody(),
          ),
        ),
      ),
    );
  }
}
