// class Person {
//   // Public properties
//   String name;
//   int age;

//   // Private property
//   String _ssn;

//   // Constructor
//   Person(this.name, this.age, this._ssn);

//   // Method
//   void displayInfo() {
//     print('Name : $name, Age : $age, SSN: $_ssn');
//   }
// }

// void main() {
//   Person person1 = Person("Alice", 30, '9841644488');
//   person1.displayInfo();
// }

// GETTERS AND SETTERS -----------------------------------------------------------
// class Circle {
//   double radius;

//   Circle(this.radius);

//   double get area => 3.14 * radius * radius;
// }

// void main() {
//   Circle c = Circle(5);
//   print(c.area);
// }

// class Rectangle {
//   double _width = 0;
//   double _height = 0;

//   void set width(double value) {
//     if (value > 0) {
//       _width = value;
//     }
//   }

//   void set height(double value) {
//     if (value > 0) {
//       _height = value;
//     }
//   }

//   double get area => _width * _height;
// }

// void main() {
//   Rectangle r = Rectangle();
//   r.width = 10;
//   print(r.area);
// }

// Static method ---------------------------------
// class Math {
//   static double pi = 3.14;

//   static int square(int x) {
//     return x * x;
//   }
// }

// void main() {
//   print(Math.pi);
//   print(Math.square(4));
// }

// Encapsulation ------------------------------------
// class BankAccount {
//   String _accountNumber;
//   double _balance;

//   // Constructor
//   BankAccount(this._accountNumber, this._balance);

//   // Getter
//   double get balance => _balance;

//   // Setter
//   void deposit(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }

//   // Method
//   void withdraw(int amount) {
//     if (amount <= _balance) {
//       _balance -= amount;
//     } else {
//       print("Insufficient balance");
//     }
//   }
// }

// void main() {
//   BankAccount account = BankAccount("9841", 1000);
//   print("Balance : \$${account.balance}");
// }

// Inheritance
class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog is barking");
  }
}

void main() {
  Dog dog = Dog();
  dog.eat();
  dog.bark();
}
