void main() {
  //Functions
  //Functions are reusable blocks of code that perform a specific task. They allow you to break

  void sayHello() {
    print("Hello, User! Welcome to Dart programming.");
  }

  sayHello(); // Calling the function to execute its code

  //Functions with parameters
  void greet(String name) {
    print("Hello, $name! Welcome to Dart programming.");
  }

  greet("Suneet");

  //Functions with return values
  int calculate(int price, int quantity) {
    return price * quantity;
  }

  int total = calculate(60, 7);
  print("Total: $total");

  bool isAdult(int age) {
    return age >= 18;
  }

  var result = isAdult(20);
  print("Is the person an adult? $result");

  //Arrow Functions (for concise function definitions)
  int add(int a, int b) => a + b;
  int sum = add(5, 10);
  print("Sum: $sum");

  //Optional Parameters
  void displayInfo(String name, [int? age]) {
    if (age != null) {
      print("Name: $name, Age: $age");
    } else {
      print("Name: $name, Age: Not provided");
    }
  }

  displayInfo("Alice", 30);
  displayInfo("Bob");

  //Default Parameters
  void setTheme({String theme = "light"}) {
    print("Theme set to: $theme");
  }

  setTheme(); // Uses the default theme
  setTheme(theme: "dark"); // Overrides the default theme
}
