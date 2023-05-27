import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/core/constants/colors.dart';
import '../../business logic/players/easy_ai.dart';
import '../../business logic/players/smart_ai.dart';
import '../../business logic/tic_tac_toe_provider.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.h,
      width: 280.w,
      decoration: BoxDecoration(
        color: MainColor.primaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(22.w, 5.h, 22.w, 22.h),
        child: GridView.builder(
          itemCount: 9,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 17.w,
            mainAxisSpacing: 17.h,
          ),
          itemBuilder: (context, index) => Consumer<TicTacToeProvider>(
            builder: (context, state, child) {
              return GestureDetector(
                onTap: () {
                  print("whichModeeeeee ${state.whichMode}");
                  if (state.whichMode == 0) {
                    state.tapped(index);
                    int num = RandomPlayer.easyMode(state);
                    Future.delayed(const Duration(milliseconds: 200), () {
                      state.tapped(num);
                    });
                  } else if (state.whichMode == 1) {
                    state.tapped(index);
                  } else if (state.whichMode == 2) {
                    if(state.oTurn){
                      if(state.displayXO[index] == ''){
                      state.tapped(index);
                      MiniMaxAIPlayer ai =
                      MiniMaxAIPlayer(aiPlayer: 'X', humanPlayer: 'O');
                      int num = ai.getBestMove(state.displayXO);
                      Future.delayed(const Duration(milliseconds: 200), () {
                        state.tapped(num);
                      });
                      }
                    }

                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: state.matchedIndexes.contains(index)
                        ? MainColor.winnerColor
                        : MainColor.secondaryColor,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(width: 5, color: Colors.transparent),
                  ),
                  child: Center(
                    child: state.displayXOIcons[index] == ''
                        ? const Text('')
                        : Image.asset(
                            state.displayXOIcons[index],
                          ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}