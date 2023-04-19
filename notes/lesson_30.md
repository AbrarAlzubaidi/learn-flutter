- if i invoke the method like this `onPressed: answerQuestion(),` it will raise an error cause here u said t dart run this method when u execute/complie the code.
- so to fix it u can pass it like this `onPressed: answerQuestion,` without its bracket like a pointer. 

```dart
class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key}); // create constructor
  void answerQuestion() {
   
  }
  ...
  onPressed: answerQuestion,
  ...
}
```

the above was the first way to create a method and use it in flutter, but what if we want a method to just call it once ?, here we can use something called anonymous function

ex:
```dart
class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key}); // create constructor
  ...
  onPressed: ()=>{
    // here goes the logic
  },
  ...
}

```