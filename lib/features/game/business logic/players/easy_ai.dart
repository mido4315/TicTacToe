import 'dart:math';
import '../tic_tac_toe_provider.dart';

class RandomPlayer {
  static Random random = Random();
  static int square = 0;

  static int easyMode(TicTacToeProvider game) {
    do {
      square = random.nextInt(9);
    } while (game.displayXO[square] != '');
    return square;
  }
}