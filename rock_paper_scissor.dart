import 'dart:io';
import 'dart:math';

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, Paper or Scissor ? (r /p /s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      final random = rng.nextInt(3);
      final aiMove = random == 0
          ? 'r'
          : random == 1
              ? 'p'
              : 's';
      print('AI move: $aiMove');
      if (input == aiMove) {
        print('It\'s a draw');
      } else if (input == 'r' && aiMove == 's' ||
          input == 'p' && aiMove == 'r' ||
          input == 's' && aiMove == 'p') {
        print('You win');
      } else {
        print('You lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
}
