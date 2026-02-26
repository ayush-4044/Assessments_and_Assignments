import 'dart:io';

double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void main() {
  print("Temperature Converter");
  print("1. Celsius to Fahrenheit");
  print("2. Fahrenheit to Celsius");
  print("Enter your choice (1 or 2):");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("Enter temperature in Celsius:");
    double celsius = double.parse(stdin.readLineSync()!);
    double result = celsiusToFahrenheit(celsius);
    print("Temperature in Fahrenheit: $result");
  }
  else if (choice == 2) {
    print("Enter temperature in Fahrenheit:");
    double fahrenheit = double.parse(stdin.readLineSync()!);
    double result = fahrenheitToCelsius(fahrenheit);
    print("Temperature in Celsius: $result");
  }
  else {
    print("Invalid choice!");
  }
}
