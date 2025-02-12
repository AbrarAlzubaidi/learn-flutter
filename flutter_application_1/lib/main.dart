import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

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
  Widget build(BuildContext context) { // context is the reference to the widget returned by the build method and it is used to access the theme, media query, etc.
    var colorsTheme = const [
      Color.fromARGB(255, 150, 209, 146),
      Color.fromARGB(255, 45, 98, 45),
      Color.fromARGB(255, 12, 65, 18),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
          backgroundColor: colorsTheme.last,
        ),
        body: GradientContainer(colorsTheme: colorsTheme),
      ),
    );
  }
}
