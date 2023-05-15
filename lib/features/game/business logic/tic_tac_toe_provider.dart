import 'package:flutter/material.dart';

class TicTacToeProvider extends ChangeNotifier {
  List<String> displayXO = List<String>.generate(9, (index) => '');
  List<int> matchedIndexes = [];
  bool oTurn = true;
  String winnerValue = '';
  int oScore = 0;
  int xScore = 0;
  int filledBoxes = 0;
  int whoWins = 1;
  bool winnerFound = false;
  bool gameEnds = false;
  String currWinner = '';

  void tapped(int index) {
    if (!gameEnds && oTurn && displayXO[index] == '') {
      displayXO[index] = 'O';
      filledBoxes++;
      oTurn = !oTurn;
    } else if (!gameEnds && !oTurn && displayXO[index] == '') {
      displayXO[index] = 'X';
      filledBoxes++;
      oTurn = !oTurn;
    }
    winnerCheck(displayXO);
    notifyListeners();
  }

  int winnerCheck(List<String> displayXO) {
    // check 1st row
    if (displayXO[0] == displayXO[1] &&
        displayXO[0] == displayXO[2] &&
        displayXO[0] != '') {
      winnerValue = 'Player ${displayXO[0]} Wins!';
      matchedIndexes.addAll([0, 1, 2]);
      _updateScore(displayXO[0]);
    }

    // check 2nd row
    if (displayXO[3] == displayXO[4] &&
        displayXO[3] == displayXO[5] &&
        displayXO[3] != '') {
      winnerValue = 'Player ${displayXO[3]} Wins!';
      matchedIndexes.addAll([3, 4, 5]);
      _updateScore(displayXO[3]);
    }

    // check 3rd row
    if (displayXO[6] == displayXO[7] &&
        displayXO[6] == displayXO[8] &&
        displayXO[6] != '') {
      winnerValue = 'Player ${displayXO[6]} Wins!';
      matchedIndexes.addAll([6, 7, 8]);
      _updateScore(displayXO[6]);
    }

    // check 1st column
    if (displayXO[0] == displayXO[3] &&
        displayXO[0] == displayXO[6] &&
        displayXO[0] != '') {
      winnerValue = 'Player ${displayXO[0]} Wins!';
      matchedIndexes.addAll([0, 3, 6]);
      _updateScore(displayXO[0]);
    }

    // check 2nd column
    if (displayXO[1] == displayXO[4] &&
        displayXO[1] == displayXO[7] &&
        displayXO[1] != '') {
      winnerValue = 'Player ${displayXO[1]} Wins!';
      matchedIndexes.addAll([1, 4, 7]);
      _updateScore(displayXO[1]);
    }

    // check 3rd column
    if (displayXO[2] == displayXO[5] &&
        displayXO[2] == displayXO[8] &&
        displayXO[2] != '') {
      winnerValue = 'Player ${displayXO[2]} Wins!';
      matchedIndexes.addAll([2, 5, 8]);
      _updateScore(displayXO[2]);
    }

    // check diagonal
    if (displayXO[0] == displayXO[4] &&
        displayXO[0] == displayXO[8] &&
        displayXO[0] != '') {
      winnerValue = 'Player ${displayXO[0]} Wins!';
      matchedIndexes.addAll([0, 4, 8]);
      _updateScore(displayXO[0]);
    }

    // check diagonal
    if (displayXO[6] == displayXO[4] &&
        displayXO[6] == displayXO[2] &&
        displayXO[6] != '') {
      winnerValue = 'Player ${displayXO[6]} Wins!';
      matchedIndexes.addAll([6, 4, 2]);
      _updateScore(displayXO[6]);
    }
    if (!winnerFound && filledBoxes == 9) {
      whoWins = 0;
      winnerValue = 'It\'s a Draw!';
    }
    return whoWins;
  }

  void _updateScore(String winner) {
    if (!gameEnds && winner == 'O') {
      oScore++;
      whoWins = 2;
    }
    if (!gameEnds && winner == 'X') {
      xScore++;
      whoWins = -2;
    }
    winnerFound = true;
    gameEnds = true;
    print("game ens : $gameEnds");
  }

  void clearBoard() {
    displayXO.clear();
    displayXO = List<String>.generate(9, (index) => '');
    filledBoxes = 0;
    winnerValue = '';
    winnerFound = false;
    gameEnds = false;
    matchedIndexes.clear();
    whoWins = 1;
    oTurn = true;
    notifyListeners();
  }

  void reset() {
    clearBoard();
    oScore = 0;
    xScore = 0;
    notifyListeners();
  }
}
