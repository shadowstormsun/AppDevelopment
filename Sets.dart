void main() {
  //Set does not allow duplicate values and does not maintain order
  //Set is defined using curly braces {}
  Set<String> users = {"Suneet", "Bhakti", "Satyarth"};
  print(users);
  if (users.contains("Suneet")) {
    print("Suneet is present in users set");
  } else {
    print("Suneet is not present in users set");
  }

  //Convert Lists to Sets to remove duplicates
  List<String> userList = ["Suneet", "Bhakti", "Satyarth", "Suneet"];
  Set<String> userSet = userList.toSet();
  print(userSet);
  for (var user in userSet) {
    print(user);
  }
}
