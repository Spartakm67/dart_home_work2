import 'dart:math';
import 'dart:io';

void main() {
  var random = Random();
  int randomNumber = random.nextInt(100) + 1;
  // print(randomNumber);

  while(true) {
    print('Enter the integer number from 1 to 100 (or "exit" to leave):');
    final inputNumber = stdin.readLineSync();

    if (inputNumber?.toLowerCase() == 'exit') break;

    if (inputNumber == null || inputNumber.isEmpty) {
      print('Data can not be empty!');
      continue;
    }
   int? number = int.tryParse(inputNumber);

    if (number == null) {
      print('It\'s not a valid number!');
      continue;
    }

    if (number == randomNumber) {
        print('Congratulations, you have guessed the number!'
            '\nGame over!');
        break;
      } 
    
    // while (number != randomNumber) {
      if (number > 100 || number < 1) {
        print('The number must be between 1 and 100!');
        // break;
        continue;
      }
      if (number > randomNumber) {
        print('Your number is more than required!');
        // break;
      } else {
        print('Your number is less than required!');
        // break;
        }
    //}
  }
  print('Exit the program');
}

