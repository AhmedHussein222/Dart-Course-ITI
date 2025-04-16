void main() {
  calcBMI(double weight, double height) {
    double bmi = (weight / (height * height)); // Fixed BMI formula
    bmi = double.parse(bmi.toStringAsFixed(2)); // Round to 2 decimal places
    String category;

    if (bmi < 19) {
      category = "Underweight";
    } else if (bmi >= 19 && bmi < 25) {
      category = "Normal weight";
    } else if (bmi >= 25 && bmi < 30) {
      category = "Overweight";
    } else if (bmi >= 30) {
      category = "Obese";
    } else {
      category = "Unknown";
    }

    print("Your BMI is: $bmi, Category: $category");
  }

  calculateGrades(List<int> grades) {
    double average = grades.reduce((a, b) => a + b) / grades.length;
    String result = average >= 60 ? "Passed" : "Failed";
    print("Average grade: $average");
    print(result);
  }

  atmSimulation(double initialBalance, int operation, [double? amount]) {
    double balance = initialBalance;

    switch (operation) {
      case 1: // Check Balance
        print("Your current balance is: \$${balance.toStringAsFixed(2)}");
        break;
      case 2: // Deposit
        if (amount != null && amount > 0) {
          balance += amount;
          print(
              "Deposited successfully. New balance: \$${balance.toStringAsFixed(2)}");
        } else {
          print("Invalid deposit amount.");
        }
        break;
      case 3: // Withdraw
        if (amount != null && amount > 0) {
          if (amount <= balance) {
            balance -= amount;
            print(
                "Withdrawn successfully. New balance: \$${balance.toStringAsFixed(2)}");
          } else {
            print("Error: Insufficient balance.");
          }
        } else {
          print("Invalid withdrawal amount.");
        }
        break;
      default:
        print("Invalid operation.");
    }
  }

  isPalindrome(String word) {
    String reversed = word.split('').reversed.join('');
    bool result = word == reversed;
    print("Is '$word' a palindrome? $result");
    return result;
  }

  shoppingCartTotal(Map<String, double> cart, [double discount = 0.0]) {
    double total = cart.values.reduce((a, b) => a + b);
    double discountedTotal = total * (1 - discount);

    print("Cart total: \$${total.toStringAsFixed(2)}");
    if (discount > 0.0) {
      print("With discount: \$${discountedTotal.toStringAsFixed(2)}");
    }
  }

  // Example usage:
  calcBMI(70, 1.75);
  calculateGrades([85, 90, 78, 92]);
  atmSimulation(1000.0, 2, 500); 
  atmSimulation(1000.0, 3, 1200);
  atmSimulation(1000.0, 1); 
  isPalindrome("level"); 
  isPalindrome("hello"); 
  shoppingCartTotal(      {"Shirt": 20.0, "Jeans": 50.0, "Shoes": 80.0}, 0.10 ); 
  shoppingCartTotal(      {"Shirt": 20.0, "Jeans": 50.0, "Shoes": 80.0}       ); 
}
