void main() {
  //Map is a collection of key-value pairs
  //Key is unique and value can be duplicate
  Map<String, String> user = {"name": "Suneet", "age": "25", "city": "Delhi"};

  Map<String, dynamic> user1 = {"name": "Suneet", "age": 25, "city": "Delhi"};
  user["age"] = "26";

  print(user);
  print(user1["name"]);

  user1["city"] = "Mumbai";
  print(user1);

  user.remove("city");
  print(user);

  if (user.containsKey("name")) {
    print("Name is present in user map");
  } else {
    print("Name is not present in user map");
  }
}
