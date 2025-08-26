# Libraries in Dart

They streamline coding and development

## 1. `dart:core`

- Imported by default

## 2. `dart:math`

- Provides `sine` and `cosine` functions.
- `pi` and `e` constants are also provided.
- Can be used for random number generation
- Probability based and statistical calculations are also provided.

### Example:

```dart
import "dart:math";

const double e = 2.718281828459045;
const double pi = 3.1415926;

void main() {
  double angle = pi / 4;
  double sine = sin(angle);
  double cosine = cos(angle);
  Random random = Random();
  int randomNumber = random.nextInt(100);

  print('Sine : $sine');
  print("Cosine: $cosine");
  print("Random Number: $randomNumber");
}
```

## `dart:async`

- Create asynchronous code
- Helps perform multiple tasks
- `Future` are values that are accessible in the future. They are essential for asynchronous operations.
- `await` keyword pauses execution until the Future completes.
- `Stream` are series of asynchronous events. It manages data flow from **server** or **user**.
- You can subscribe to a Stream to react to individual event.

### Example

```dart
import "dart:async";

void main() async {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return "Waited for 2 seconds and data received";
  }

  String data = await fetchData();
  print(data);
}
```

## `dart:convert` library

- Provides converter for UTF-8 and JSON
- Helps app to communicate with APIs
- Connects dart Objects with external systems.

### Example

```dart
import 'dart:convert';

void main() {
  String jsonString = '{"name": "Bigyan", "age" : 23}';

  Map<String, dynamic> user = jsonDecode(jsonString);
  Map<String, dynamic> newUser = {"name": "Bob", "age": 25};
  String newJsonString = jsonEncode(newUser);
  print(user);
  print(newJsonString);
}
```

## `http` package

- Contains high-level classes and functions
- Downloads or transfers data
- Simplifies HTTP connections
- Interacts with RESTful APIs

### Example

```dart
import 'package:http/http.dart' as http;

void main() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var response = await http.get(url);

  if (response.statusCode == 200) {
    print("Response data : ${response.body}");
  } else {
    print("Request failed with status: ${response.statusCode}");
  }
}
```

## `intl` package

- Resolves a unique and widespread problem
- Provides localization and internationalization support
- Helps apps adapt to different regions

### Example

```dart
import 'package:intl/intl_browser.dart';

void main(){
  var now = DateTime.now();
  var formatter = DateFormat("yyyy-MM-dd");
  String formattedDate = formatter.format(now);
  print('Formatted Date: $formattedDate');
}
```

## `path` package

- Helps organize entities efficiently
- Provides splitting, joining and normalizing
- Manipulates files and directory paths

### Example

```dart
import "package:path/path.dart" as p;

void main() {
  var fullPath = p.join('directory', "file.txt");
  print("Full path : $fullPath");
}
```

## Create own library

- Boosts maintainability and modularity
- Encapsulates reusable code
- Use `import` keyword to import file

### 1. Create Library

```dart title="main.dart"
library math_utils;

int add(int a, int b) {
  return a + b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  if (b == 0) {
    throw ArgumentError("Cannot divide by zero");
  }
  return a / b;
}
```

### 2. Using it

```dart title="main.dart"
import 'math_utils.dart';

void main() {
  int sum = add(10, 5);
  double product = multiply(10.1, 5.2);
  double quotient = divide(10, 3);

  print("Sum is : $sum , Product is: $product, Quotient is : $quotient");
}
```

## Install packages

- Use `dart pub get` command to install packages from `pubspec.lock` file
