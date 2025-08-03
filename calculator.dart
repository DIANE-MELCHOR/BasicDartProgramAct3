import 'dart:io';

/// SimpleCalculator class with basic arithmetic methods
class SimpleCalculator {
  double addNumbers(double x, double y) => x + y;
  double subtractNumbers(double x, double y) => x - y;
  double multiplyNumbers(double x, double y) => x * y;
  double divideNumbers(double x, double y) {
    if (y == 0) {
      throw Exception('Cannot divide by zero.');
    }
    return x / y;
  }
}

void main() {
  var calculator = SimpleCalculator();

  stdout.write('Please enter the first number: ');
  double firstNum = double.parse(stdin.readLineSync()!);

  stdout.write('Please enter an operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();

  stdout.write('Please enter the second number: ');
  double secondNum = double.parse(stdin.readLineSync()!);

  double result;

  try {
    switch (operator) {
      case '+':
        result = calculator.addNumbers(firstNum, secondNum);
        break;
      case '-':
        result = calculator.subtractNumbers(firstNum, secondNum);
        break;
      case '*':
        result = calculator.multiplyNumbers(firstNum, secondNum);
        break;
      case '/':
        result = calculator.divideNumbers(firstNum, secondNum);
        break;
      default:
        print('Invalid operator entered.');
        return;
    }

    print('Result: $result');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}