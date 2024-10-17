import 'dart:io';

void main() {
  while(true) {
    print('Enter the score (or "exit" to leave):');
    final inputNumber = stdin.readLineSync();

        if (inputNumber?.toLowerCase() == 'exit') break;

        if (inputNumber == null || inputNumber.isEmpty) {
      print('Data can not be empty!');
      continue;
    }
        num? number = double.tryParse(inputNumber);

       if (number == null) {
      print('It\'s not a number!');
      continue;
    }

    if (number < 0 || number > 100) {
      print('You entered not a valid number! '
          'Required number is in the range of 1 to 100');
      continue;
    }

    else {
      if (number >= 90) print('Grade A');
      if (number >= 80 && number <= 89) print('Grade B');
      if (number >= 70 && number <= 79) print('Grade C');
      if (number >= 60 && number <= 69) print('Grade D');
      if (number < 60) print('Grade F');
    }
  }
  print('Exit the program');
}