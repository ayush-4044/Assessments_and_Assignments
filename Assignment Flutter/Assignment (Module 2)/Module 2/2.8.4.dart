import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final targetNumber = random.nextInt(100) + 1;
  int attempts = 0;
  bool hasGuessedCorrectly = false;

  final getHint = (int guess, int target) =>
  guess > target ? "Too high!" : "Too low!";

  print('Welcome to the Number Guessing Game');
  print('I have chosen a number between 1 and 100. Can you guess it?');

  while (!hasGuessedCorrectly) {
    stdout.write('Enter your guess: ');
    String? input = stdin.readLineSync();

    int? guess = int.tryParse(input ?? '');

    if (guess == null) {
      print('Please enter a valid number.');
      continue;
    }

    attempts++;

    if (guess == targetNumber) {
      hasGuessedCorrectly = true;
      print('Correct! You found it in $attempts attempts.');
    } else {
      print(getHint(guess, targetNumber));
    }
  }
}