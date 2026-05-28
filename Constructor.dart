class User {
  String username;
  int password;
  //Constructor - Special method to initialize objects
  //Keyword - constructor name is same as class name
  User(this.username, this.password);
  bool login() {
    return username == "admin" && password == 123456;
  }
}

void main() {
  User user2 = User("admin", 123456);
  User user1 = User("Suneet", 654321);
  if (user1.login()) {
    print("User1 logged in successfully.");
  } else if (user2.login()) {
    print("User2 logged in successfully.");
  } else {
    print("Login failed.");
  }
}
