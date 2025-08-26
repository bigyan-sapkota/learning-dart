import "dart:async";

void main() async {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return "Waited for 2 seconds and data received";
  }

  String data = await fetchData();
  print(data);
}
