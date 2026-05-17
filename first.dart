void main() {
  print("Variable - Store Data");
  String email = "john@example.com";
  print(email);
  int Otp = 1212;
  print(Otp);
  double price = 99.99;
  print(price);
  double rating = 4.5;
  print(rating);
  bool isLoggedIn = true;
  bool isDarkMode = false;
  print(isLoggedIn);
  print(isDarkMode);

  var name = "Alice"; // The type is inferred as String
  var age = 30;
  print(name);
  print(age);

  // Dynamic variable can hold any type of data
  dynamic data = "Suneet";
  data = 123; // Now it holds an integer
  data = true; // Now it holds a boolean
  print(data);

  //const variable is fixed and cannot be changed after it's assigned
  const pi = 3.14159;
  print(pi);
}
