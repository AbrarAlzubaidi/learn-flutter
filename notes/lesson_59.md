# advanced flutter concepts

## render content conditionally

Conditional rendering in Flutter allows you to show or hide widgets based on certain conditions. Here are the main ways to render content conditionally:

### 1. Using if statements with ternary operators

The ternary operator (`condition ? trueWidget : falseWidget`) is ideal for simple conditions:

```dart
Widget build(BuildContext context) {
  return isLoggedIn 
    ? UserDashboard() 
    : LoginScreen();
}
```

### 2. Using if-null operator

The if-null operator (`??`) shows a fallback widget when the value is null:

```dart
Widget build(BuildContext context) {
  return userProfile ?? LoadingSpinner();
}
```

### 3. Using Visibility widget

The Visibility widget lets you control a widget's visibility:

```dart
Visibility(
  visible: shouldShow,
  child: Text('This text can be hidden'),
)
```

### 4. Using Builder functions

For more complex conditions, use functions:

```dart
Widget _buildContent() {
  if (isLoading) {
    return LoadingSpinner();
  } else if (hasError) {
    return ErrorMessage();
  } else {
    return ContentWidget();
  }
}
```

### Best Practices for each way

1. Use ternary operators for simple conditions
2. Use if-null operators when dealing with nullable widgets
3. Use Visibility when you want to preserve the widget's state
4. Use builder functions for complex conditional logic

## lifting state up

## Lifting State Up

Think of lifting state up like moving a TV remote control to a place where everyone in the family can reach it.

### What is it?

- Moving shared data (state) to a parent widget so multiple children can access it
- Parent widget becomes the single source of truth

### Simple Example

```dart
// Parent holds the shared data
class CounterParent extends StatefulWidget {
  @override
  State<CounterParent> createState() => _CounterParentState();
}

class _CounterParentState extends State<CounterParent> {
  int count = 0;  // Shared state

  void increment() {
    setState(() => count++);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Display child shows the count
        DisplayChild(count: count),
        // Button child can change the count
        ButtonChild(onPressed: increment),
      ],
    );
  }
}

// First child just displays the count
class DisplayChild extends StatelessWidget {
  final int count;
  const DisplayChild({required this.count});

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

// Second child has a button to change the count
class ButtonChild extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonChild({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Add'),
    );
  }
}
```

### When to Use It

- When two or more widgets need to share the same data
- When children need to communicate with each other
- When you need to control multiple widgets from one place
