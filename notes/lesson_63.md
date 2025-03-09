# Get rid of initState() by using ternary expression

as previous topic by render content conditionally, we can use this advantage feature and get rid of `initState()`. here in this file i will show the both two ways of using the `initState()` and ternary expression to produce the same thing.

## code using initState()

```dart
class QuestionApp extends StatefulWidget{
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState(){
    return _QuestionAppState();
  }
}

class _QuestionAppState extends State<QuestionApp> {
  Widget ? currentScreen; 
  
  // here we use initState method to initialize currentScreen variable to have home page at first.
  @override
  void initState(){
    super.initState();
    currentScreen = HomePageBody(changeScreen);
  }

    // then we changed the value for it once the button is pressed
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
            // and here how we use it inside Center Widget.
            child: currentScreen,
          ),
        ),
      ),
    );
  }
}

```

here in this code we use `initState()` to initialize `currentScreen` value and use it to render the screen that we want depend on if the user is click on the start button so `Questions()` widget will show else the original home page shows.

## code using ternary operator

```dart
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
    // here we use ternary operator
     Widget screenWidget = currentScreen == 'home' ? HomePageBody(changeScreen) : const Questions();
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

```

## use if statement instead of initState()

```dart
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
    // use if statement 
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

```
