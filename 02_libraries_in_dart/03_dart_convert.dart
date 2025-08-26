import 'dart:convert';

void main() {
  String jsonString = '{"name": "Bigyan", "age" : 23}';

  Map<String, dynamic> user = jsonDecode(jsonString);
  Map<String, dynamic> newUser = {"name": "Bob", "age": 25};
  String newJsonString = jsonEncode(newUser);
  print(user);
  print(newJsonString);
}
