import 'dart:io';

void main() {
  while(true) {
    print('Enter a year (or "exit" to leave):');
    final yearValue = stdin.readLineSync();

    if (yearValue?.toLowerCase() == 'exit') break;

    if (yearValue == null || yearValue.isEmpty) {
      print('Data can not be empty!');
      continue;
    }
    int? year = int.tryParse(yearValue);

    if (year == null) {
      print('It\'s not a number!');
      continue;
    }

    if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
        print('Yes! $year is a leap year!');
    } else {
      print('$year is not a leap year!');
    }
  }
  print('Exit the program');
}