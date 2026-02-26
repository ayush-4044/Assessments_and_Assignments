import 'dart:io';

void main() {
  int num1;
  int num2;
  String op;


  while (true) {
    try {
      print("Enter first number: ");
      num1 = int.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print("Invalid input! Please enter a valid number");
    }
  }


  while (true) {
    try {
      print("Enter second number: ");
      num2 = int.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print("Invalid input! Please enter a valid number");
    }
  }


  print("Enter operator (+, -, *, /): ");
  op = stdin.readLineSync()!;

  try {
    int result;

    switch (op) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          throw Exception("Division by zero is not allowed");
        }
        result = num1 ~/ num2;
        break;
      default:
        throw Exception("Invalid operator");
    }

    print("Result: $result");
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}
