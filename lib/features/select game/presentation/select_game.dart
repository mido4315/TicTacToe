import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/colors.dart';

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
        child: const SafeArea(
          child: Center(
            child: Column(
              children: [
                SelectGameHeader(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

