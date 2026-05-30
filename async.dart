/**void main() {
  print("App Starting");
  fetchData();
  print("App Ready");
}

void fetchData() {
  for (int i = 0; i < 1000000000; i++) {
    print("Data Loaded");
  }
}
**/
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => "Data Loaded");
}

Future<void> main() async {
  print("App Starting");
  String data = await fetchData();
  print(data);
  print("App Ready");
}
