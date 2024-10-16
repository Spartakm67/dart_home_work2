import 'dart:io';

void main() {
  while(true) {
    print('Enter an integer number greater than zero (or "exit" to leave):');
    final inputNumber = stdin.readLineSync();

    if (inputNumber?.toLowerCase() == 'exit') break;

    if (inputNumber == null || inputNumber.isEmpty) {
      print('Data can not be empty!');
      continue;
    }
    int? number = int.tryParse(inputNumber);

    if (number == null || number <= 0) {
      print('Please enter a valid integer greater than zero!');
      continue;
    }

    int i = 1;
    int factorialNumber = 1;

    while (i <= number) {
      factorialNumber *= i;
      i++;
    }
    print('The factorial of \'$number\' is equal to \'$factorialNumber\'');
  }
  print('Exit the program');
}
