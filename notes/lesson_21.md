# flutter is about widgets

- whenever you create a widget you have to create it as class based.(its a special type of object)
- after creating the widget class it should inherit from another class by `extends` word
  - this thing called inheritance. each class extends from one class
  - it should extends from `StatelessWidget` class.

- define a build method inside the class. also it should decorated by `@override`, because we override the build method that inside the `StatelessWidget` class
- whenever u call build method pass to it context prop. and it is an object its type is BuildContextv
- any class should return a widget so build method will return it
- any build wedget function (the root wedget/ the main wedget/ the parent wedget) should return a widget called `MaterialApp()`
  - inside the `MaterialApp()` we have to pass the argument, but there are a lot of them so you can choose the one that you need.
  - at first we just need the `home` argument.
    - home argument is the core widget that flutter bring on the screen when the the app is mounted.

- to run this wedget class you should call it in main function. so inside the main function
  - you can call another function called `runApp(<class_widget>)` and pass to it the class u want to display.

[widget catalog](https://docs.flutter.dev/ui/widgets).

- if we use the `StatelessWidget` it means that we should include `build` method, `build` method should return a widget so the data type of it is a widget. and you should decorated with `@override`. also it should have this as a parameter `BuildContext context`. dont forget it should return a widget.
