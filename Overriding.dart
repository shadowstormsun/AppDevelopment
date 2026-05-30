//Method Overriding - Both the parent class and child class have the same method name and same parameters. The method in the child class overrides the method in the parent class.
class User{
  void login(){
    print("User logged in.");
  }
}
class Admin{
  void login(){
    print("Admin logged in.");
  }
}
void main(){
  User user = User();
  user.login(); // Output: User logged in.

  Admin admin = Admin();
  admin.login(); // Output: Admin logged in.
}