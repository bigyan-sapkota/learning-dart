- The `main` function is the entry point of the dart.

```dart
void main(){
    print("Hello World");
}
```

# Data Types

- int
- double (floating point number )
- String
- Bool
- List

```dart
void main(){
    int age = 30;
    double height = 5.9;
    String name = "Flutter";
    bool isFlutterAwesome = true;
    List<String> languages = ["Dart", "Javascript", "Python"];
    print('Name: $name , Age : $age, Height : $height, Languages : $languages');
}
```

# Variables

Can be declared with `var`, `const` and `final`

- **var** declares a variable without specifying its type explicitly
- **const** declares compile-time constants
- **final** declares a variable that can be set only once

## Data types

Statically typed language (every variables should have data type)

- **number** : `int` or `double` (double is used for floating)
- **String** : `String` (surrounded with double quote)
- **String Interpolation** : use `$` symbols as prefix
- **Booleans** : represents `true` or `false`
- **List** : Ordered collections of items. The first element is at index 0.

### Example

```dart
List<String> fruits = ["Apple", "Banana", "Cherry"];
print(fruits[0]); // Output: Apple

// You can also add element to list using
fruits.add("Orange");
```

- **Map** : Collections of key-value pairs and useful to look up values based on unique keys

### Example

```dart
Map<String, int> scores = {
    "Alice" : 90,
    "Bob" : 85,
    "Charlie" : 95,
};
print(scores["Alice"]); // Output : 90

// Add key value pair
scores["Bigyan"] = 100;
```

- **Null** - absence of value

### Example

```dart
// The following is nullable string
String? nullableString = null;
int? nullableInt = null;
```

# Type inference and annotations

- Infers the type of a variable
- Annotates data types

### Example

```dart
var city = "Kathmandu";
// inferred as String

String country = "Nepal";
// annotation
```

# Functions

Reusable block of code. Use `void` for function that doesn't return a value or return type.

```dart
void greet(){
    print("Hello World");
}

int add(int a, int b){
    return a  + b;
}

void main(){
    greet();

    int sum = add(4, 5);

    print("Sum is : $sum")
}
```

## Functions parameters

- We can provide `required`, `optional`, `named` and `default` parameters.

### 1. Required parameters

- Must be provided when calling the function and are positional.

### 2. Optional parameters

- Either positional or named
- Allows to omit some arguments while calling function
- Use `[]` to specify them
- Use `??` to return value if not specified or null

### 3. Named parameters

- Specified using curly braces.
- Required or default values

```dart
// Required Parameter
int multiply(int a, int b) {
  return a * b;
}

// Optional Parameters
String fullName(String FirstName, [String? middleName, String? lastName]) {
  return '$FirstName ${middleName ?? ''} ${lastName ?? ''}';
}

// Named parameters with default value "Hello" for greeting
void sayMyName({required String name, String greeting = "Hello"}) {
  print('$greeting , $name!');
}

void main() {
  print(multiply(4, 5)); // 20

  print(fullName("Bigyan"));
  print(fullName("Bigyan", "Prasad", "Sapkota"));

  // greeting is optional
  sayMyName(name: "Bigyan");
  sayMyName(name: "Torofo", greeting: "Hi handsome");
}

```

## Arrow functions

```dart
int square(int x) => x * x;

void main() {
  print(square(4));
}
```

## Methods

Functions associated with objects such as List class.

## Closures and lexical scope

- Allows functions to capture and store references to variables.
- Variable remains accessible to functions

### Example

```dart
Function makeAdder(int addBy) {
  return (int i) => addBy + i; // Closure
}

void main() {
  var add2 = makeAdder(2);
  var add5 = makeAdder(5);

  print(add2(3)); // Output : 5
  print(add5(3)); // Output : 8
}
```

## Anonymous functions

- Ideal for short operations
- Used for clean code

```dart
void main() {
  var list = ["apples", "bananas"];

  list.forEach((item) {
    print(item);
  });
}
```

# Classes

- Blueprints to define object
- It has either `private` or `public` properties.
- Classes have `method` and `properties` which are functions and variables

```dart
class Person {
  // Public properties
  String name;
  int age;

  // Private property
  String _ssn;

  // Constructor
  Person(this.name, this.age, this._ssn);

  // Method
  void displayInfo() {
    print('Name : $name, Age : $age, SSN: $_ssn');
  }
}

void main() {
  Person person1 = Person("Alice", 30, '9841644488');

  person1.displayInfo(); // Output : Name : Alice, Age : 30, SSN: 9841644488
}
```

## Getters and Setters

- `Getters` perform calculations or formatting.
- `Setters` validate input or trigger actions.

### Example of `Getter`

```dart
class Circle {
  double radius;

  Circle(this.radius);

  double get area => 3.14 * radius * radius;
}

void main() {
  Circle c = Circle(5);
  print(c.area);
}
```

### Example of `setter`

```dart
class Rectangle {
  double _width = 0;
  double _height = 0;

  void set width(double value) {
    if (value > 0) {
      _width = value;
    }
  }

  void set height(double value) {
    if (value > 0) {
      _height = value;
    }
  }

  double get area => _width * _height;
}

void main() {
  Rectangle r = Rectangle();
  r.width = 10;
  r.height = 20;
  print(r.area);
}
```

## Static methods

- Do not belong to Object instances
- Are used for utility functions

### Example

```dart
class Math {
  static double pi = 3.14;

  static int square(int x) {
    return x * x;
  }
}

void main() {
  print(Math.pi);
  print(Math.square(4));
}
```

## Encapsulation

- Safely guard from unauthorized access.
