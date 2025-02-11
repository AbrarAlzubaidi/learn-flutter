# class constructor and named arguments

## constructors

a method inside the class, its called only one time whenever we create an instance of the class and to give properties of any class initial values, for example:

```dart
class Person{
    String name = 'Tod';
    int age = 20;
}

var obj = Person();

// for above example this make no sense to make any instance do not have a name and age have these values as a default, so to prevent this we can pass the values into the class directly by using the constructors
```

### how to create a constructor in dart?

- constructor should have the same name of the class.
  - for example: if the class name is `Car` the constructor should be the same as class name `Car`.

```dart
class Person{
    String name;
    int age;

    Person(String name, int age){ // constructor
        this.name = name;
        this.age = age;
    }
}


var obj = Person('Anna', 22);
```

### short way to write constructor

```dart
class Person{
    String name;
    int age;

    Person({this.name, this.age});
}
```

## what is named arguments?

its wrapping the argument of the constructor (or any method/function) by `{}`

### why

to make the life easier when your constructor have for example 10 arguments, u should pass the values in sequence, and it is not easy to memorize the order of the args. so for that u can use the named arguments technique. for example:

```dart
class Person{
    String name;
    int age;

    Person({String name, int age}){
        this.name = name;
        this.age = age;
    }
}


var obj1 = Person(name: 'Anna', age: 22);
var obj2 = Person(age: 27, name: 'Suzan');

```

### Assign a value for it (make it optional/ default value)

- also we can add a default values if there is no given value (means this value is not required (optional)), for example:

```dart
class Person{
    String name;
    int age;

    Person({String name = 'User', int age = 18}){
        this.name = name;
        this.age = age;
    }
}


var obj1 = Person(name: 'Anna', age: 22);
var obj2 = Person(age: 27);
print(obj1.name); // Anna
print(obj2.name); //User
```

### @required (make them required, must be passed)

- if u want to make the value is required, u can decorate it by `@required`, for example:

```dart
class Person{
    String name;
    int age;

    Person({@required String name, int age = 18}){
        this.name = name;
        this.age = age;
    }
}

// obj2 does not have a name so it will throw an error
var obj1 = Person(name: 'Anna', age: 22);
var obj2 = Person(age: 27); // ERROR
print(obj1.name); // Anna
print(obj2.name); //ERROR

// the correct way to fix obj2 error by passing a name
var obj2 = Person(name: 'Suzan'); 
print(obj1.name); // Anna
print(obj2.name); //Suzan
```

## Positional Arguments

### what is positional arguments?

they are the arguments that function receive them when you call it.

### what is positional arguments problem?

you have to pass them by their order (they are sensitive about order). as example

```dart
void add(a, b) { 
  print(a + b);
}

add(5, 6); // here a=5 and b=6
add(6, 5); // here a=6 and b=5 
```

### Positional arguments can be made optional by wrapping them with square brackets ([])

```dart
void add(a, [b]) { // b is optional
  print(a + b);
}
```

### assign them a value as a default

and you can pass a default value by:

```dart
void add(a, [b = 5]) { // b is optional, 5 will be used as a default value
  print(a + b);
}
add(10); // b would still be 5 because it's not overwritten, so the result will be 10+5=15
add(10, 6); // here, b would be 6, here the result will be 10+6=16
```
