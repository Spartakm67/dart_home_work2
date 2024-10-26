import 'dart:io';
import 'globals.dart';



// Block diagram:
//--------------
// 1. Start → List alphabet
// 2. Input Text → (or text Exit)
// 3. Check if Null or Empty?
// 4. Yes → Error (Print "Invalid Input") → Continue (or text Exit)
// 5. No → Convert to Lowercase →
// 6. For each Character in Text:
// 7. Is it a letter? → Apply Atbash Cipher
// 8. Is it a number? → Keep unchanged
// 9. Is it other character? → Ignore
// 10. Group into 5 characters →
// 11. Print Result →
// 12. End



// String codedMessage = '';

void main() {

  bool isValidLetter(String input) {
    final regex = RegExp(r'[a-z]');
    return regex.hasMatch(input);
  }

  bool isValidNumber(String input) {
    final regex = RegExp(r'[0-9]');
    return regex.hasMatch(input);
  }

  List<String> alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');
  List<String> reAlphabet = alphabet.reversed.toList();
  List<String> atbashList = [];

  print(alphabet);
  print(reAlphabet);

  while(true) {
    atbashList.clear();
    print('Enter a text of letters and numbers  (or "exit" to leave):');
    final input = stdin.readLineSync();

    if (input?.toLowerCase() == 'exit') break;

    if (input == null || input.isEmpty) {
      print('Data can not be empty or invalid!');
      continue;
    }

    final userInput = input.toLowerCase().trim();
    print(userInput);

    userInput.split('').forEach((input) {

      if (isValidLetter(input)) {
        int index = alphabet.indexOf(input);
        atbashList.add(alphabet[(alphabet.length - 1) - index]);
      } else if (isValidNumber(input)) {
        atbashList.add(input);
      } else {
        return;
      }
    });
    print(atbashList);

    Globals.codedMessage = '';
    for (int i = 0; i < atbashList.length; i++) {
      Globals.codedMessage += atbashList[i];
      if ((i + 1) % 5 == 0 && (i + 1) != atbashList.length) {
        Globals.codedMessage += ' ';
      }
    }
    Globals.messageCoded = Globals.codedMessage;
    print(Globals.codedMessage);
    print(Globals.messageCoded);
  }
  print('Exit the program');
}

