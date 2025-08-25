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
