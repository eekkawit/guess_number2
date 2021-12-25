import 'dart:math';
import 'dart:io';

class Game{ //camel case
  static const maxRandom = 100;
   int? _answer;
  var count = 0;
   Game() {
     var r = Random();
     _answer = r.nextInt(maxRandom) + 1;
   }
   int doGuess(int num){
     //ถ้าทายถูก return 0
     //ถ้าทายมากไป return 1
     //ถ้าทายน้อยไป return -1
     count++;
     if(num > _answer!){
       return 1;
     }else if(num< _answer!){
       return -1;
     }else{
       return 0;
     }
   }
  playgame() {
    const maxRandom = 100;
    //var random = Random();
    //var answer = random.nextInt(maxRandom) + 1;
    var isCorrect = false;
    var game = Game();
    //var guessCount = 0;
    print('▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲▲');
    print('            GUESS THE NUMBER            ');
    print('▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼▼');


    do {
      stdout.write(' Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        continue;
      }

      var result = game.doGuess(guess);
      var num_guess = game.count;
      //guessCount++;

      if (result == 1) {
        print(' $guess is TOO HIGH! ');
        print('❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤');
      } else if (result == -1) {
        print(' $guess is TOO LOW! ');
        print('❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤');
      } else {
        print(' $guess is CORRECT ❤️, total guesses: $num_guess');
        print('❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤');
        isCorrect = true;
      }
    } while (!isCorrect);

    print('                  THE END                ');
    print('❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤❤');
  }
}