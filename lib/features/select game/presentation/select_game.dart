import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/colors.dart';

import 'widgets/custom_selection.dart';
import 'widgets/select_game_header.dart';

class SelectGame extends StatelessWidget {
  const SelectGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: MainColor.backgroundGradient,
        ),
        // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SelectGameHeader(),
                const CustomSelection(
                  imagePath: 'assets/icons/dump AI.png',
                  circleColor: Color(0xFFFFA800),
                  containerColor: Color(0xFFF3501D),
                  gameMode: 'Dump AI',
                  borderColor: Color(0xFFFF8A00),
                ),
                const CustomSelection(
                  imagePath: 'assets/icons/2players.png',
                  circleColor: Color(0xFFEB00FF),
                  containerColor: Color(0xFF7213EB),
                  gameMode: 'Two Players',
                  borderColor: Color(0xFFFF00A8),
                ),
                const CustomSelection(
                  imagePath: 'assets/icons/smart robot.png',
                  circleColor: Color(0xFF391898),
                  containerColor: Color(0xFF451CBB),
                  gameMode: 'Unbeatable UI',
                  borderColor: Color(0xFF843CE0),
                ),
                const CustomSelection(
                  imagePath: 'assets/icons/multiplayer1.png',
                  circleColor: Color(0xFF4C9BD4),
                  containerColor: Color(0xFF33A6BF),
                  gameMode: 'Multiplayer',
                  borderColor: Color(0xFF5D5FEF),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 70,
                    width: 110,
                    child: Image.asset(
                      'assets/icons/controller2.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
