import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         // primarySwatch: Colors.purple,
//         colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple).copyWith(
//           primary: const Color.fromARGB(255, 47, 29, 135),
//         ),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title, style: const TextStyle(color: Colors.white)),
//       ),
//       body: GradientContainer(counter: counter),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         backgroundColor: const Color.fromARGB(255, 81, 63, 172),
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class GradientContainer extends StatelessWidget {
//   final int counter;

//   const GradientContainer({super.key, required this.counter});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(colors: [
//             Color.fromARGB(255, 133, 101, 222),
//             Color.fromARGB(255, 47, 29, 135),
//           ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have clicked the button this many times:',
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//               Text(
//                 '$counter',
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 40,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // context is the reference to the widget returned by the build method and it is used to access the theme, media query, etc.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
          backgroundColor: const Color.fromARGB(255, 47, 29, 135),
        ),
        body: const GradientContainer(),
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 133, 101, 222),
            Color.fromARGB(255, 47, 29, 135),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text('Hello World',
            style: TextStyle(fontSize: 42, color: Colors.white)),
      ),
    );
  }
}
