import 'dart:io';

void main() {
    while (true) {
    print('Enter the first number (or "exit" to leave):');
    final inputFirstNumber = stdin.readLineSync();
    if (inputFirstNumber?.toLowerCase() == 'exit') break;

    final firstNumber = double.tryParse(inputFirstNumber!);
    if (firstNumber == null) {
      print('Please enter a valid number!');
      continue;
    }

    print('Enter the second number (or "exit" to leave):');
    final inputSecondNumber = stdin.readLineSync();
    if (inputSecondNumber?.toLowerCase() == 'exit') break;

    final secondNumber = double.tryParse(inputSecondNumber!);
    if (secondNumber == null) {
      print('Please enter a valid number!');
      continue;
    }

    print('Enter an operation (+, -, *, /):');
    final action = stdin.readLineSync();
    if (action == null) {
      print('Please enter a valid action!');
      continue;
    }

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
          print('Please enter a valid value.');
          continue;
      }
       print('The result of $firstNumber $action $secondNumber'
           ' = ${result.toStringAsFixed(2)}');
     }
    print('Exit the program');
}

double add (double a, double b) => a + b;

double subtract (double a, double b) => a - b;

double multiply (double a, double b) => a * b;

double divide (double a, double b) => a / b;








