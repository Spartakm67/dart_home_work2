import 'dart:io';

// Added functions readNumber() & readOperation() for the ability to correct
// input errors immediately at the point of their occurrence without returning
// to the beginning of the program

void main() {
  while (true) {
    print('Enter the first number (or "exit" to leave):');
    final firstNumber = readNumber();
    if (firstNumber == null) break;

    print('Enter the second number (or "exit" to leave):');
    final secondNumber = readNumber();
    if (secondNumber == null) break;

    String? action = readOperation();
    if (action == null) break;

    double? result;

    switch (action) {
      case '+':
        result = add(firstNumber, secondNumber);
        break;
      case '-':
        result = subtract(firstNumber, secondNumber);
        break;
      case '*':
        result = multiply(firstNumber, secondNumber);
        break;
      case '/':
        if (secondNumber != 0) {
          result = divide(firstNumber, secondNumber);
        } else {
          print('Error: Division by zero');
          continue;
        }
        break;
      default:
        print('Please enter a valid operation.');
        continue;
    }
      print('The result of $firstNumber $action $secondNumber = ${result.toStringAsFixed(2)}');
  }
  print('Exit the program');
}

double add(double a, double b) => a + b;

double subtract(double a, double b) => a - b;

double multiply(double a, double b) => a * b;

double divide(double a, double b) => a / b;



double? readNumber() {
  while (true) {
    final input = stdin.readLineSync();
    if (input?.toLowerCase() == 'exit') return null;

    final number = double.tryParse(input!);
    if (number != null) {
      return number;
    } else {
      print('Please enter a valid number! (or "exit" to leave)');
    }
  }
}


String? readOperation() {
  while (true) {
    print('Enter an operation (+, -, *, /):');
    final action = stdin.readLineSync();
    if (action?.toLowerCase() == 'exit') return null;

    if ({'+', '-', '*', '/'}.lookup(action) != null) {
      return action;
    } else {
      print('Please enter a valid operation (or "exit" to leave).');
    }
  }
}