// Encapsulation
class BankAccount {
  // Private variable
  double _balance;

  // Constructor
  BankAccount(this._balance);

  // Getter for balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }
}

// Abstraction
abstract class Animal {
  void makeSound(); // Abstract method
}

// Inheritance and Polymorphism
class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof! Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow! Meow!");
  }
}

void main() {
  // Encapsulation demonstration
  BankAccount account = BankAccount(1000);
  account.deposit(500);
  print("Balance after deposit: ${account.balance}");
  account.withdraw(300);
  print("Balance after withdrawal: ${account.balance}");

  // Polymorphism demonstration
  Animal dog = Dog();
  Animal cat = Cat();

  dog.makeSound();
  cat.makeSound();
}
