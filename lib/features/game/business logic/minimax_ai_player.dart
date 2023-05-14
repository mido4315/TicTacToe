import 'dart:math';
import 'tic_tac_toe_provider.dart';

class MiniMaxAIPlayer {
  static Random random = Random();
  static const WIN_SCORE = 100;
  static const LOSE_SCORE = -100;
  static const DRAW_SCORE = 0;
  static int square = 0;

  static int easyMode(TicTacToeProvider game) {
    do {
      square = random.nextInt(9);
    } while (game.displayXO[square] != '');
    return square;
  }

  static int beastMode(TicTacToeProvider game) {


    return 1;
  }

  int minimax(TicTacToeProvider game) {
    return square;
  }
}
