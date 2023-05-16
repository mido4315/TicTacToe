import 'dart:math';

class MiniMaxAIPlayer {
  String aiPlayer;
  String humanPlayer;

  MiniMaxAIPlayer({required this.aiPlayer, required this.humanPlayer});

  int getBestMove(List<String> board) {
    List<int> availableMoves = getAvailableMoves(board);
    int bestMove = -1;
    int bestScore = -999;

    for (int move in availableMoves) {
      List<String> newBoard = List.from(board);
      newBoard[move] = aiPlayer;

      int score = minimax(newBoard, 0, false);
      if (score > bestScore) {
        bestScore = score;
        bestMove = move;
      }
    }

    return bestMove;
  }

  int minimax(List<String> board, int depth, bool isMaximizing) {
    int score = evaluate(board);

    if (score == 10 || score == -10 || !board.contains('')) {
      return score;
    }

    if (isMaximizing) {
      int bestScore = -999;

      for (int i = 0; i < 9; i++) {
        if (board[i] == '') {
          board[i] = aiPlayer;
          bestScore = max(bestScore, minimax(board, depth + 1, !isMaximizing));
          board[i] = '';
        }
      }

      return bestScore;
    } else {
      int bestScore = 999;

      for (int i = 0; i < 9; i++) {
        if (board[i] == '') {
          board[i] = humanPlayer;
          bestScore = min(bestScore, minimax(board, depth + 1, !isMaximizing));
          board[i] = '';
        }
      }

      return bestScore;
    }
  }

  int evaluate(List<String> board) {
    List<List<int>> winningCombinations = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], // rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], // columns
      [0, 4, 8], [2, 4, 6] // diagonals
    ];

    for (List<int> combination in winningCombinations) {
      if (board[combination[0]] == board[combination[1]] &&
          board[combination[1]] == board[combination[2]]) {
        if (board[combination[0]] == aiPlayer) {
          return 10;
        } else if (board[combination[0]] == humanPlayer) {
          return -10;
        }
      }
    }

    return 0; // Draw
  }

  List<int> getAvailableMoves(List<String> board) {
    List<int> availableMoves = [];
    for (int i = 0; i < board.length; i++) {
      if (board[i] == '') {
        availableMoves.add(i);
      }
    }
    return availableMoves;
  }
}


// class MiniMaxAIPlayer {
//   static int square = 0;
//   static TicTacToeProvider g = TicTacToeProvider();
//
//   static int beastMode(TicTacToeProvider game) {
//     return 1;
//   }
//
//   static int minimax(TicTacToeProvider game, int depth, bool isMaximizing) {
//     g = game;
//     int result = g.winnerCheck(g.displayXO);
//     if (result != 1 || depth == 0) {
//       return result;
//     }
//     if (isMaximizing) {
//       int finalScore = -100;
//       int bestMove = 0;
//       for (int i = 0; i < 9; i++) {
//         if (g.displayXO[i] == '') {
//           g.displayXO[i] = 'O';
//           int score = minimax(g, depth - 1, false);
//           g.displayXO[i] = '';
//           if (score > finalScore) {
//             finalScore = score;
//             bestMove = i;
//           }
//         }
//       }
//       return bestMove;
//     } else {
//       int finalScore = 100;
//       int bestMove = 0;
//       for (int i = 0; i < 9; i++) {
//         if (g.displayXO[i] == '') {
//           g.displayXO[i] = 'X';
//           int score = minimax(g, depth - 1, true);
//           g.displayXO[i] = '';
//           if (score > finalScore) {
//             finalScore = score;
//             bestMove = i;
//           }
//         }
//       }
//       return bestMove;
//     }
//   }
// }

// class MiniMaxAIPlayer {
//   static int _miniMax(TicTacToeProvider game, int depth, bool isMaximizing) {
//     // End state
//     if (game.whoWins == 0) {
//       return 0;
//     } else if (game.whoWins == 1) {
//       return game.whoWins == 2 ? 100 : -100;
//     }
//     // Intermediate state
//     int bestScore = isMaximizing ? -999 : 999;
//
//     for (int i = 0; i < 9; ++i) {
//       if (game.displayXO[i] == '') {
//         game.displayXO[i] = isMaximizing ? AI : HUMAN;
//
//         bestScore = isMaximizing
//             ? max(bestScore, _miniMax(game, depth + 1, false))
//             : min(bestScore, _miniMax(game, depth + 1, true));
//
//         game.displayXO[i] = "";
//       }
//     }
//
//     return isMaximizing ? bestScore - depth : bestScore + depth;
//   }
//
//   static int move(TicTacToeProvider game) {
//     int bestScore = -999;
//     int bestMove = 0;
//
//     for (int i = 0; i < 9; ++i) {
//       if (game.displayXO[i] == '') {
//         game.displayXO[i] = AI;
//         int score = _miniMax(game, 0, false);
//
//         if (score > bestScore) {
//           bestScore = score;
//           bestMove = i;
//         }
//         game.displayXO[i] = "";
//       }
//     }
//
//     return bestMove;
//   }
// }
//class SmartComputerPlayer {
//   static String letter = 'X';
//
//   static int getMove(TicTacToeProvider game) {
//     if (game.filledBoxes == 0) {
//       // If it's the first move, choose a random available square
//       return Random().nextInt(9);
//     } else {
//       // Use the minimax algorithm to determine the best move
//       Map<String, dynamic> result = minimax(game, letter);
//       return result['position'];
//     }
//   }
//
//   static Map<String, dynamic> minimax(TicTacToeProvider state, String player) {
//     String maxPlayer = letter;
//     String otherPlayer = player == 'X' ? 'O' : 'X';
//
//     // Check if the previous move is a winner
//     if (state.currWinner == otherPlayer) {
//       return {
//         'position': null,
//         'score': 1 * ((8 - state.filledBoxes) + 1) * (otherPlayer == maxPlayer ? 1 : -1)
//       };
//     } else if (state.filledBoxes != 0) {
//       return {'position': null, 'score': 0};
//     }
//
//     Map<String, dynamic> best;
//     if (player == maxPlayer) {
//       best = {'position': null, 'score': -double.infinity}; // Each score should maximize
//     } else {
//       best = {'position': null, 'score': double.infinity}; // Each score should minimize
//     }
//
//     for (int possibleMove in state.availableMoves) {
//       state.tapped(possibleMove);
//       Map<String, dynamic> simScore = minimax(state, otherPlayer); // Simulate a game after making that move
//
//       // Undo move
//       state.displayXO[possibleMove] = '';
//       state.currWinner = '';
//       simScore['position'] = possibleMove; // Represents the optimal next move
//
//       if (player == maxPlayer) {
//         if (simScore['score'] > best['score']) {
//           best = simScore;
//         }
//       } else {
//         if (simScore['score'] < best['score']) {
//           best = simScore;
//         }
//       }
//     }
//
//     return best;
//   }
// }
