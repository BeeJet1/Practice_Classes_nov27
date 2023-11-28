import 'package:practice_classes_nov27/practice_classes_nov27.dart'
    as practice_classes_nov27;

void main() {
  /*Circle myCircle = Circle(8.0, "Red");
  print("Circle radius: ${myCircle.getRadius()}");
  print("Radius color: ${myCircle.getColor()}");*/ //Task 1

  /*Student myStudent = Student("Lee", 32, 4.5);
  print("Student name: ${myStudent.getName()}");
  print("Age: ${myStudent.getAge()}");
  print("Average score: ${myStudent.getAveragescore()}"); */ //Task 2

  /*Car myCar = Car("Tesla", "Model X", 2023);
  print("Vehicle brand: ${myCar.getBrand()}");
  print("Model: ${myCar.getModel()}");
  print("Year: ${myCar.getYear()}"); */ //Task 3

  /*Book myBook = Book("The Empire must Die", "Mikhail Zygar", 2017);
  print("Title: ${myBook.getTitle()}");
  print("Author: ${myBook.getAuthor()}");
  print("Year: ${myBook.getYear()}"); */ //Task 4

  /*Rectangle myRectangle = Rectangle(6.0, 12.0);
  print("Square of rectangle: ${myRectangle.calcArea()}");
  print("Perimeter of rectangle: ${myRectangle.calcPerimeter()}"); */ //Task 5

  /*BankAcc myAccount = BankAcc(123456, 1000, "John Wick");

  print("Account number: ${myAccount.getAccountNumber()}");
  print("Current balance: ${myAccount.getBalance()} KGS");
  print("Owner: ${myAccount.getOwner()}");

  myAccount.deposit(500.0);
  myAccount.withdraw(200.0);

  print("Current balance: ${myAccount.getBalance()} KGS");*/ //Task 6

  /*Goods water = Goods('water', 25.0, 5);
  print('Goods: ${water.getName()}');
  print('Price: \$${water.getPrice()}');
  print('Quantity: ${water.getQuantity()}');
  print('Total cost: \$${water.getTotalCost}'); */ //Task 7

  /*Employee Azamat = Employee("Azamat", "Developer", 150000.00);
  print('Employee: ${Azamat.getName()}');
  print('Position: ${Azamat.getPosition()}');
  print('Salary: ${Azamat.getSalary()}');
  Azamat.plusSalary(15.0);
  print('Actual salary: \$${Azamat.getSalary()}'); */ //Task 8

  Triangle myTriangle = Triangle(2.0, 5.0, 7.0);
  print("Angle A: ${myTriangle.getAngleA()}");
  print("Angle B: ${myTriangle.getAngleB()}");
  print("Angle C: ${myTriangle.getAngleC()}");
  print("Triangle square: ${myTriangle.calcSquare()}");
}

class Circle {
  double? radius;
  String? color;
  Circle(double radius, String color) {
    this.radius = radius;
    this.color = color;
  }
  double? getRadius() {
    return radius;
  }

  String? getColor() {
    return color;
  }
}

class Student {
  String? name;
  int? age;
  double? averagescore;
  Student(String name, int age, double averagescore) {
    this.name = name;
    this.age = age;
    this.averagescore = averagescore;
  }
  String? getName() {
    return name;
  }

  int? getAge() {
    return age;
  }
}

double? getAveragescore() {
  return averagescore;
}

class Car {
  String? brand;
  String? model;
  int? year;
  Car(String brand, String model, int year) {
    this.brand = brand;
    this.model = model;
    this.year = year;
  }
  String? getBrand() {
    return brand;
  }

  String? getModel() {
    return model;
  }

  int? getYear() {
    return year;
  }
}

class Book {
  String? title;
  String? author;
  int? year;
  Book(String title, String author, int year) {
    this.title = title;
    this.author = author;
    this.year = year;
  }
  String? getTitle() {
    return title;
  }

  String? getAuthor() {
    return author;
  }

  int? getYear() {
    return year;
  }
}

class Rectangle {
  double? width;
  double? heigh;
  Rectangle(double width, double heigh) {
    this.width = width;
    this.heigh = heigh;
  }
  /*double? getWidth() {
    return width;
  }

  double? getHeigh() {
    return heigh;
  } */

  double? calcArea() {
    return width! * heigh!;
  }

  double? calcPerimeter() {
    return 2 * (width! + heigh!);
  }
}

class BankAcc {
  int? accountNumber;
  int? balance;
  String? owner;
  int? amount;
  BankAcc(int accountNumber, int balance, String owner) {
    this.accountNumber = accountNumber;
    this.balance = balance as int?;
    this.owner = owner;
  }

  int? getAccountNumber() {
    return accountNumber;
  }

  int? getBalance() {
    return balance;
  }

  String? getOwner() {
    return owner;
  }

  void deposit(double amount) {
    if (amount! > 0) {
      //balance += amount;
      print("Accecpted $amount KGS.");
    } else {
      print("Error. Incorrect amount.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance!) {
      //balance?. -= amount;
      print("Cash out $amount KGS.");
    } else {
      print("Error. Try again.");
    }
  }
}

class Goods {
  String? name;
  double? price;
  int? quantity;

  Goods(this.name, this.price, this.quantity);
  String? getName() {
    return name;
  }

  double? getPrice() {
    return price;
  }

  int? getQuantity() {
    return quantity;
  }

  double? getTotalCost() {
    return price! * quantity!.toDouble();
  }
}

class Employee {
  String? name;
  String? position;
  double? salary;
  Employee(this.name, this.position, this.salary);
  String? getName() {
    return name;
  }

  String? getPosition() {
    return position;
  }

  double? getSalary() {
    return salary;
  }

  void plusSalary(double percent) {
    if (percent > 0) {
      salary += salary! * (percent / 100);
    }
  }
}

class Triangle {
  double? angleA;
  double? angleB;
  double? angleC;
  Triangle(this.angleA, this.angleB, this.angleC);
  double? getAngleA() {
    return angleA;
  }

  double? getAngleB() {
    return angleB;
  }

  double? getAngleC() {
    return angleC;
  }

  double? calcSquare() {
    double? s = (angleA! + angleB! + angleC!) / 2; //semiperimeter

    double? square = square(s * (s - angleA!) * (s - angleB!) * (s - angleC!));
    return square; // Heron's formulae
  }
}
