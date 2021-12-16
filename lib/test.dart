// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

void main() {
  const maxRandom = 100;
  var r = Random();
  var answer = r.nextInt(maxRandom);
  var i = 1;
  var guess;
  do {
    stdout.write('Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      print(' $guess is CORRECT ; Total guess: $i');
      print('❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤');
      print('              THE END');
      break;
    } else if (guess == null) {
      continue;
    } else if (input == null) {
      return;
    } else if (answer < guess) {
      print(' $guess is Too HIGH!!');
    } else {
      print(' $guess to LOW!');
    }
    i++;
  } while (guess != answer);
}
