import 'package:flutter/material.dart';
import 'package:question_game/home_body.dart';
import 'package:question_game/questions.dart';

class QuestionApp extends StatefulWidget{
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState(){
    return _QuestionAppState();
  }
}

class _QuestionAppState extends State<QuestionApp> {
  // this variable to store the widget that will be displayed on the screen.
  late Widget currentScreen;
  @override
  void initState(){
    super.initState();
    currentScreen = HomePageBody(changeScreen);
  }

  // this function that will switch between 2 screens depends on the button tapped or not.
  // also this function should be passed to home_body.dart file to be used in the button.
  void changeScreen(){
    setState(() {
      currentScreen = const Questions();
    });
  }

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
          child: Center(
            child: currentScreen,
          ),
        ),
      ),
    );
  }
}
