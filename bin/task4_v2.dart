import 'dart:io';

//In this variant, the user enters two queries in sequence for Celsius and/or Fahrenheit

void main() {
  while (true) {
    print('Enter the temperature value in Celsius or Fahrenheit:');
    print('(Enter the value in Celsius or leave blank for Fahrenheit):');

    final celsiusInput = stdin.readLineSync();

    print('Enter the value in Fahrenheit (or leave blank if already entered Celsius):');

    final fahrenheitInput = stdin.readLineSync();

    double? celsiusNumber = double.tryParse(celsiusInput!);
    double? fahrenheitNumber = double.tryParse(fahrenheitInput!);

    if (celsiusInput.isNotEmpty && celsiusNumber != null) {
      final fahrenheit = celsiusToFahrenheit(celsiusNumber);
      print('$celsiusNumber°C = ${fahrenheit.toStringAsFixed(2)}°F');
    } else if (fahrenheitInput.isNotEmpty && fahrenheitNumber != null) {
      final celsius = fahrenheitToCelsius(fahrenheitNumber);
      print('$fahrenheitNumber°F = ${celsius.toStringAsFixed(2)}°C');
    } else {
      print('Please enter a valid number for either Celsius or Fahrenheit!');
    }
  }
}

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}