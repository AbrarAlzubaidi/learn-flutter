import 'package:flutter/material.dart';
import 'package:question_game/home_body.dart';
import 'package:question_game/questions_screen.dart';

class QuestionApp extends StatefulWidget{
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState(){
    return _QuestionAppState();
  }
}

class _QuestionAppState extends State<QuestionApp> {
  // this variable hold an identifier for the current screen as string
  var currentScreen = 'home';

  // here we change the identifier to 'questions' when the button is pressed. 
  void changeScreen(){
    setState(() {
      currentScreen = 'questions';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePageBody(changeScreen);

    if(currentScreen == 'questions'){
      screenWidget = const Questions();
    }
    
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
            // here we use the currentScreen variable to decide which widget to show by using the advantage of the ternary operator
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
