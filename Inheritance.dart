class User {
  String name = "";
  User(this.name);
  void login() {
    print("$name logged in.");
  }
}

class Admin extends User {
  Admin(String name) : super(name);
  void deleteUser(String userName) {
    print("$name deleted user: $userName");
  }
}
class Customer extends User {
  Customer(String name) : super(name);
  void placeOrder(String order) {
    print("$name placed an order: $order");
  }
}
void main(){
  Admin admin = Admin("Suneet");
  admin.login();
  admin.deleteUser("JohnDoe");
  Customer customer = Customer("Alice");
  customer.login();
  customer.placeOrder("Laptop");
}