import 'dart:io';

int factorial(int n) {
  int res = n == 1 ? 1 : n * factorial(n - 1);
  print(res);
  return res;
}

void main() {
  print('Enter N');
  int N = int.parse(stdin.readLineSync()!);

  int result = factorial(N);

  print('Factorial of $N');
  print(result);
}

// Variant 2

// int result = 1;
// for (int i = 1; i <= N; i++) {
// result *= i;
// }

