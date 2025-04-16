class BankAccount {
  double _balance = 0.0;
  double get balance => _balance;
  set deposit (double value) {
    if (value < 0) {
      throw ArgumentError("Balance cannot be negative.");
    }
    _balance += value;
  }
}