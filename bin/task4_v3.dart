import 'dart:io';

//in this option, the user first enters the temperature and then selects the Celsius or Fahrenheit scale


void main() {
  while (true) {
    print('Enter the temperature value (or "exit" to leave):');
    final inputTemperature = stdin.readLineSync();

    if (inputTemperature?.toLowerCase() == 'exit') {
      break;
    }

    double? temperature = double.tryParse(inputTemperature!);

    if (temperature == null) {
      print('Please enter a valid number!');
      continue;
    }

    print('Convert to: (c)celsius or (f)fahrenheit?');
    String? scale = stdin.readLineSync()?.toUpperCase();

    if (scale == 'C') {
      double celsius = fahrenheitToCelsius(temperature);
      print('$temperature°F = ${celsius.toStringAsFixed(2)}°C');
    } else if (scale == 'F') {
      double fahrenheit = celsiusToFahrenheit(temperature);
      print('$temperature°C = ${fahrenheit.toStringAsFixed(2)}°F');
    } else {
      print('Please enter a valid option (C or F).');
    }
  }
  print('Exit the program');
}

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}