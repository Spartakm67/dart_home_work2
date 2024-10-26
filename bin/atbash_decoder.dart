import 'dart:io';
import 'globals.dart';

// Block diagram:
//--------------
// 1. Start → Get 'codeMessage'
// 2. Check if Null or Empty?
// 3. Yes → Error (Print "Invalid Data") → Continue (or text Exit)
// 4. No → Convert 'codeMessage' → atbashList
// 5. For each Character in atbashList:
// 6. Is it a letter? → Apply AntiAtbash Cipher
// 7. Is it a number? → Keep unchanged
// 8. Is it other character ('space'? → Ignore
// 9. Put into decryptedMessage →
// 10. Print Result →
// 11. End


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
  List<String> decryptedMessage = [];

  print(alphabet);
  print(reAlphabet);
  print(Globals.messageCoded);


  while(true) {
    decryptedMessage.clear();

    print('Enter a codeMessage of letters and numbers  (or "exit" to leave):');
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
        decryptedMessage.add(alphabet[(alphabet.length - 1) - index]);
      } else if (isValidNumber(input)) {
        decryptedMessage.add(input);
      } else {
        return;
      }
    });
    print(decryptedMessage);

    String decodedMessage = '';
    for (int i = 0; i < decryptedMessage.length; i++) {
      decodedMessage += decryptedMessage[i];
      if ((i + 1) % 5 == 0 && (i + 1) != decryptedMessage.length) {
        decodedMessage += ' ';
      }
    }
    print(decodedMessage);
  }
  print('Exit the program');
}