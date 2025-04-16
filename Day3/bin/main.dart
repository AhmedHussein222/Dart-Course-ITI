import 'Car.dart';
import 'Animals.dart';
import 'BankAccount.dart';
void main(){


  Car car1 = Car("Toyota", "Corolla", 2020);
  Car car2 = Car("Honda", "Civic", 2021);
  Car car3 = Car("BMW", "X5", 2022);

  car1.displayInfo();
  car2.displayInfo();
  car3.displayInfo();


  Dog dog  = Dog();
  dog.makeSound();
  Cat cat = Cat();
  cat.makeSound();

  BankAccount account = BankAccount();
  account.deposit = 1000.0;
  print("Account balance: ${account.balance}");


}

