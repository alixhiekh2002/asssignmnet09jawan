import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  double firstNumber = double.parse(stdin.readLineSync()!);
  
  stdout.write("Enter the second number: ");
  double secondNumber = double.parse(stdin.readLineSync()!);
  
  stdout.write("Enter the operation (+, -, *, /, %): ");
  String operation = stdin.readLineSync()!;
  
  double? result;
  String? errorMessage;

  if (operation == '+') {
    result = firstNumber + secondNumber;
  } else if (operation == '-') {
    result = firstNumber - secondNumber;
  } else if (operation == '*') {
    result = firstNumber * secondNumber;
  } else if (operation == '/') {
    if (secondNumber != 0) {
      result = firstNumber / secondNumber;
    } else {
      errorMessage = "Error: Division by zero";
    }
  } else if (operation == '%') {
    result = firstNumber % secondNumber;
  } else {
    errorMessage = "Error: Invalid operation";
  }

  if (errorMessage != null) {
    print(errorMessage);
  } else {
    print("The result is: $result");
  }
}
