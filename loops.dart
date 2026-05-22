void main() {
  int i = 0;

  //for loop starts with initialization, then checks the condition, and finally executes the block of code. It continues to execute as long as the condition is true.
  for (int i = 0; i < 5; i++) {
    print("For Loop: $i");
  }

  //While loop starts when the condition is true and ends when the condition becomes false.
  while (i < 100) {
    print("While Loop: $i");
    i += 20;
  }

  for (int y = 1; i <= 5; y++) {
    if (y == 3) {
      print("Item found");
      break; // Exits the loop when the item is found
    }
    print("Checking item $y");
  }

  //continue statement is used to skip the current iteration of the loop and move to the next iteration.
  for (int z = 1; z <= 5; z++) {
    if (z == 3) {
      print("Skipping item $z");
      continue; // Skips the current iteration when z is 3
    }
    print("Processing item $z");
  }

  //Task check number from 1 to 10, and print even or odd
  for (int n = 1; n <= 10; n++) {
    if (n % 2 == 0) {
      print("$n is even");
    } else {
      print("$n is odd");
    }
  }
}
