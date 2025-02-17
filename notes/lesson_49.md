# stateful widgets

stateful widget is another type you can extends whenever you have to create a widget that react with users actions. as an example: increment counter, roll dice, like button..etc.

in flutter we can inherit/extend a widget called `StatefulWidget`.

[example of using stateful widget](../flutter_application_1/lib/dice.dart)

## what is the steps to create stateful widget?

1. create your widget.
2. extends/inherit from `StatefulWidget`.
3. add the constructor with the `key` value.
4. override the `createState` method.
    a. `createState` method should return a `State`.
    b. the type of the `State` is your class name between <>. example: `State <DiceRoller> createState(){}`
    c. always return a state class its name start with `_` as it is a private state class that hold the logic of the interaction/changeable widget. example: `return _DiceRollerState();`

5. create the private state class start with `_` and ends with `State` word that this is the convention how to name it.
    a. this class is extends a State class with type your `StatefulWidget` class. example: `class _DiceRollerState extends State<DiceRoller>{}`
    b. this class will return the `build()` method.

6. inside the block that you want to make the changes, as example: `rollDice()` method, call the `setState()` method.

```dart
setState((){
    // here goes the changes.
})
```

## Stateful vs Stateless

| Feature               | StatefulWidget                          | StatelessWidget                       |
|-----------------------|------------------------------------------|---------------------------------------|
| State Management      | Maintains state that can change over time| Immutable, does not maintain state    |
| Lifecycle Methods     | Has lifecycle methods like `initState`, `dispose`, `setState` | No lifecycle methods                 |
| Use Cases             | Dynamic content, user interactions       | Static content, no user interactions  |
| Performance           | Slightly heavier due to state management | Lightweight                           |
| rendering           | when state changes, the widget is re-rendered and the UI is updated | only update the screen if parent widgets were updated                            |
