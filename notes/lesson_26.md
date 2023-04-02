# class constructor and named arguments
## constructors: 
a method inside the calss, its called only one time whenever we create an instance of the class and to give properties of any class initial values, for example:
``` 
class Person{
    String name = 'Tod';
    int age = 20;
}

var obj = Person();

// for above example this make no sense to make any instance dont have a name and age have these values as a default, so to prevent this we can pass the values into the calss directly by using the constructors
```
### how to create a constructor in dart?
- constructor should have the same name of the class.
    - for example: if the class name is `Car` the constructor should be the same `Car`.


```
class Person{
    String name;
    int age;

    Person(String name, int age){
        this.name = name;
        this.age = age;
    }
}


var obj = Person('Anna', 22);
```

### what is named arguments?
its wrapping the argument of the constructor (or any method/function) by `{}`
- why? to make the live easier when your constructor have for example 10 arguments, u should pass the values in sequance, and it is not easy to memorize the order of the args. so for that u can use the named arguments techniqe. for example:
```
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
- also we can add a default values if there is no give value (means this value is not required), for example:
```
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
- if u want to make the value is required, u can decorate it by `@required`, for example:
```
class Person{
    String name;
    int age;

    Person({@required String name, int age = 18}){
        this.name = name;
        this.age = age;
    }
}


var obj1 = Person(name: 'Anna', age: 22);
var obj2 = Person(age: 27); // ERROR
print(obj1.name); // Anna
print(obj2.name); //ERROR

var obj2 = Person(name: 'Suzan'); 
print(obj1.name); // Anna
print(obj2.name); //Suzan
```

### short way to write constructor
```
class Person{
    String name;
    int age;

    Person({this.name, this.age});
}
```