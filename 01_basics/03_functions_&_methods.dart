// void greet() {
//   print("Hello World");
// }

// int add(int a, int b) {
//   return a + b;
// }

// void main() {
//   greet();

//   int result = add(4, 5);

//   print("Sum is : $result");
// }

// // Required Parameter
// int multiply(int a, int b) {
//   return a * b;
// }

// // Optional Parameters
// String fullName(String FirstName, [String? middleName, String? lastName]) {
//   return '$FirstName ${middleName ?? ''} ${lastName ?? ''}';
// }

// // Named parameters with default value "Hello" for greeting
// void sayMyName({required String name, String greeting = "Hello"}) {
//   print('$greeting , $name!');
// }

// void main() {
//   print(multiply(4, 5)); // 20

//   print(fullName("Bigyan"));
//   print(fullName("Bigyan", "Prasad", "Sapkota"));

//   // greeting is optional
//   sayMyName(name: "Bigyan");
//   sayMyName(name: "Torofo", greeting: "Hi handsome");
// }

// Arrow functions
// int square(int x) => x * x;

// void main() {
//   print(square(4));
// }

// LIST CLASS:
// void main() {
//   List<String> fruits = ["Apple", "Banana", "Cherry"];

//   fruits.add("Orange");
//   print(fruits);

//   fruits.remove("Banana");
//   print(fruits);

//   bool hasApple = fruits.contains("Apple");
//   print(hasApple);
// }

// Anonymous functions
// void main() {
//   var list = ["apples", "bananas"];

//   list.forEach((item) {
//     print(item);
//   });
// }
