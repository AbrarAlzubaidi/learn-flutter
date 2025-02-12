# pass variables to constructor

in real world projects you have dynamic project which change something depends on user preferences, as an example: when you login to an app you see something similar to this:

Hello, John!
![dynamic user name in welcome page](./assets/dynamic_username.png)

the logged in user at that moment in John's device is John and in Sarah's device is Sarah, so when Sarah logging in with her account the name will changed to her.

this is a small and short example of using username and display it. for that in flutter we have to pass the username to the Widget's constructor.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulating a logged-in user
    String username = 'John';

    return MaterialApp(
      // option 1: pass it as named argument
      home: WelcomeScreen(username: username),
      // option 2: pass it as positional argument
      home: WelcomeScreen(username),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  // option 1: receive it as named argument
  const WelcomeScreen({required this.username, super.key});
  // option 2: receive it as positional argument
  const WelcomeScreen(this.username, {super.key});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Text(
          'Hello, $username!',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
```
