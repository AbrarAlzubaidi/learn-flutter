# Variables in dart

variables in all programming languages are data containers.

variables have value and address that stored in the memory.

## create variable in dart using var or const

```dart
var variable_name = variable_value

var name = 'jk';
var age = 20;
const gender = 'male';
```

## difference between var and const

**`var`**

- **Usage**: Used to declare a variable without specifying its type explicitly. The type is inferred from the assigned value.
- **Mutability**: The value of a var variable can be changed after it is initialized.
- Example:

```dart
var name = 'John'; // type inferred as String
name = 'Doe'; // allowed


// flutter example
var textColor = Colors.white;

class GradientText extends StatelessWidget {
  const GradientText({super.key});

  @override
  Widget build(BuildContext context) {
    textColor = Colors.yellow;

    return Text('Hello World',
        style: TextStyle(fontSize: 42, color: textColor));
  }
}
```

**`const`**

- **Usage**: Used to declare a compile-time constant. It is implicitly `final`.
- **Mutability**: The value of a `const` variable cannot be changed once it is set.
- **Compile-time Initialization**: `const` variables must be initialized with a constant value known at compile time.
- Example:

```dart
const pi = 3.14159; // compile-time constant
// const currentTime = DateTime.now(); // not allowed, must be a compile-time constant
```

**`final`**

- **Usage**: Used to declare a variable that can only be set once. It is initialized when accessed.
- **Mutability**: The value of a `final` variable cannot be changed once it is set.
- **Runtime Initialization**: `final` variables can be initialized at runtime.
- Example:

```dart
final currentTime = DateTime.now(); // initialized at runtime
// currentTime = DateTime.now(); // not allowed, will cause an error
```

### Summary

- var: Mutable, type inferred, can be reassigned.
- final: Immutable after initialization, can be initialized at runtime.
- const: Immutable, compile-time constant, must be initialized with a constant value.

## create (declare) a variable without initialization in flutter

```dart
<variable_type>? variable_name

Alignment? startAlignment;
```
