import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: MainColor.backgroundGradient,
          ),
          // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: const Center(
            child: Column(
              children: [],
            ),
          ),
        ));
  }
}
