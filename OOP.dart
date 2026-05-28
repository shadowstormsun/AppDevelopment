//class - Blueprint of an object
//Keyword - class
class User {
  String name = "";
  int age = 0;

  void Greet() {
    print("Hello, I am $name and I am $age years old.");
  }
}

void main() {
  //Object - Instance of a class
  //Keyword - new
  //Object - Can create multiple objects from a class

  User abc = User();
  abc.name = "Suneet";
  abc.age = 20;
  abc.Greet();
}
