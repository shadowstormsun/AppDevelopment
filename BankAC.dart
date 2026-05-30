class BankAC {
  String accountHolderName;
  int accountNumber;
  double balance;
  BankAC(this.accountHolderName, this.accountNumber, this.balance);
  void deposit(double amount) {
    balance += amount;
  }
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawal successful. Current Balance : $balance");
    } else {
      print("Insufficient funds. Current Balance : $balance");
    }
  }
  void choiceBalance() {
    print("Current Balance : $balance");
    print("Account Holder Name : $accountHolderName");
    print("Account Number : $accountNumber");
  }
}
void main(){
  BankAC account1 = BankAC("Suneet", 123456789, 1000.0);
  account1.choiceBalance();
  account1.deposit(500.0);
  account1.choiceBalance();
  account1.withdraw(200.0);
  account1.choiceBalance();
}