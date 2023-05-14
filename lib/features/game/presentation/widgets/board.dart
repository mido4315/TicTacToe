import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/core/constants/colors.dart';

import '../../business logic/tic_tac_toe_provider.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 9,
        mainAxisSpacing: 9,
      ),
      itemBuilder: (context, index) => Consumer<TicTacToeProvider>(
        builder: (context, state, child) {
          return GestureDetector(
            onTap: () {
              state.tapped(index);
            },
            child: Container(
              decoration: BoxDecoration(
                color: MainColor.secondaryColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 5, color: Colors.transparent),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 11.0),
                  child: Text(
                    state.displayXO[index],
                    style: TextStyle(
                      fontSize: 64,
                      color: state.matchedIndexes.contains(index)
                          ? Colors.teal
                          : MainColor.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
