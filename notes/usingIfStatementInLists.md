# If Statements in Lists

In Dart, you can use `if` statements directly inside lists to add items conditionally. Here's how:

## Basic Usage

```dart
var list = [
  'item1',
  'item2',
  if (someCondition) 'item3'  // item3 only added if condition is true
];
```

## Ways to Use If in Lists

### 1. Simple If

```dart
var numbers = [
  1,
  2,
  if (isActive) 3  // No curly braces needed
];
```

### 2. If-Else

```dart
var numbers = [
  1,
  2,
  if (isActive) 3
  else 4
];
```

### 3. Alternative Using Ternary

```dart
var numbers = [
  1,
  2,
  isActive ? 3 : 4
];
```

## Important Notes

- No curly braces `{}` around the if statement
- Only one line allowed in the if body
- Useful for building widget trees in Flutter
- Makes code more readable when dealing with complex widgets

## Learn More

You can find more details about this feature [here](https://github.com/dart-lang/language/blob/master/accepted/2.3/control-flow-collections/feature-specification.md)