import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/core/constants/colors.dart';
import 'package:tic_tac_toe/core/constants/fonts.dart';

import '../../business logic/tic_tac_toe_provider.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TicTacToeProvider>(
      builder: (context, state, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              state.winnerValue,
              style: MainFonts.customFontWhite,
            ),
            const SizedBox(
              height: 22,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              onPressed: () {
                state.clearBoard();
              },
              child: const Text(
                'Play Again!',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                state.reset();
              },
              child: Text(
                'reset',
                style: TextStyle(fontSize: 20, color: MainColor.primaryColor),
              ),
            ),
          ],
        );
      },
    );
  }
}
