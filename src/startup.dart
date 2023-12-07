import 'dart:io';

void main() {
  print('Welcome to Dart Bank!');
  print('\nPlease enter your name: ');
  String? customerName = stdin.readLineSync();

  int? customerBalance;
  do {
    print('Hello $customerName, please enter your balance (for validation):');
    String? input = stdin.readLineSync();
    try {
      customerBalance = int.parse(input!);
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  } while (customerBalance == null);

  print('\nYour balance is: $customerBalance USD');

  int bonusAmount = 5;
  int newBalance = customerBalance + bonusAmount;
  print(
      'You have received a \$$bonusAmount bonus! Here is your new balance: $newBalance USD');
}
