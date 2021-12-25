// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
import 'game.dart';

void main() {
  var game = Game();
  var again = true;
  var wrong = false;
  do {
    game.playgame();
    do {
      stdout.write('Play again (Y/N): ');
      var A = stdin.readLineSync();
      if (A == 'Y' || A == 'y') {
        again = true;
        wrong = false;
      } else if (A == 'N' || A == 'n') {
        again = false;
        wrong = false;
      } else {
        wrong = true;
      }
    } while (wrong);
  } while (again);
}