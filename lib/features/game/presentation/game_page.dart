import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/colors.dart';
import '../business logic/tic_tac_toe_provider.dart';
import 'widgets/board.dart';
import 'widgets/result.dart';
import 'widgets/score_board.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: ChangeNotifierProvider(
        create: (context) => TicTacToeProvider(),
        child: const Padding(
          padding: EdgeInsets.all(22.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ScoreBoard(),
              ),
              Expanded(
                flex: 6,
                child: Board(),
              ),
              Expanded(
                flex: 3,
                child: Result(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
