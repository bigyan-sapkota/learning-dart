
// Usage of dart:core------------------------------------------------------
// void main(){
//     String greeting = 'Hello , Dart';
//     int number = 42;
//     List<String> fruits = ["Apple", "Mango"];
//     Map<String, int> scores = {"Alice": 9, "Bob" : 85};

//     print('Gretting : $greeting, Number : $number, Fruits: $fruits, Score: $scores');
// }

// Usage of dart:math---------------------------------------------------------
// import "dart:math";
// void main(){
//     double angle = pi/4;
//     double sine = sin(angle);
//     double cosine = cos(angle);
//     Random random = Random();
//     int randomNumber = random.nextInt(100);

//     print('Sine: $sine , Cosine : $cosine, Random Number : $randomNumber');
// }

// Usage of dart:async----------------------------------------------------------
// import "dart:async";

// void main() async{
//     Future<String> fetchData() async{
//         await Future.delayed(Duration(seconds: 2));
//         return "Data Fetched!";
//     }

//     String data = await fetchData();
//     print(data);
// }

// Usage of dart:convert -----------------------------------------------------------
// import "dart:convert";

// void main(){
//     String jsonString = '{"name": "Alice", "age": 30}';
//     Map<String, dynamic> user = jsonDecode(jsonString);
//     print("Name: ${user['name']}");
//     print("Age : ${user['age']}");

//     Map<String, dynamic> newUser = {"name" : "Bigyan", "age": 23};
//     String? nullableString = jsonEncode(newUser);
//     print(nullableString);
// }

// Usage of the dart http package-----------------------------------------------------
// import 'package:http/http.dart' as http;

// void main() async{
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
//     var response = await http.get(url);

//     if(response.statusCode == 200){
//         print("Response data : ${response.body}");
//     }else{
//         print("Request failed with status code ${response.statusCode}");
//     }
// }

// Usage of intl package-----------------------------------------------------------------
// import "package:intl/intl.dart";

// void main(){
//     var now = DateTime.now();
//     var formatter = DateFormat("yyyy-mm-dd");
//     String formattedDate = formatter.format(now);

//     print("Formatted Data: $formattedDate");
// }

// Usage of the path package------------------------------------------------------------------
// import "package:path/path.dart" as p;

// void main(){
//     var fullPath = p.join("directory", "file.txt");
//     print("Full file path: $fullPath");
// }

