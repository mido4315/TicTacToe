import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/core/constants/fonts.dart';
import '../../business logic/tic_tac_toe_provider.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TicTacToeProvider>(
      builder: (context, state, child) {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Player O',
                    style: MainFonts.customFontWhite,
                  ),
                  Text(
                    state.oScore.toString(),
                    style: MainFonts.customFontWhite,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Player X',
                    style: MainFonts.customFontWhite,
                  ),
                  Text(
                    state.xScore.toString(),
                    style: MainFonts.customFontWhite,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
