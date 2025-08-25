// void main(){
//     print("Hello World");
//     var sayMyName = "Bigyan Sapkota";
//     print(sayMyName);

//     print(" ");
//     var name = "Bigyan Sapkota";
//     print("Hello $name!");
// }

// FUNCTIONS -------------------------------
void greet(String name) {
  print("Hello $name!");
}

void main() {
  int age = 30;
  double height = 5.9;
  String name = "Flutter";
  bool isFlutterAwesome = true;
  List<String> languages = ["Dart", "Javascript", "Python"];
  print(
    'Name: $name ,isFlutterAwesome: $isFlutterAwesome,  Age : $age, Height : $height, Languages : $languages',
  );

  greet("Bigyan Sapkota");
}
