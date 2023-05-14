import 'package:flutter/material.dart';

class TicTacToeProvider extends ChangeNotifier {
  List<String> displayXO = List<String>.generate(9, (index) => '');
  bool oTurn = true;

  void tapped(int index) {
    if (oTurn && displayXO[index] == '') {
      displayXO[index] = 'O';
    } else {
      displayXO[index] = 'X';
    }
    oTurn = !oTurn;
    notifyListeners();
  }

}
