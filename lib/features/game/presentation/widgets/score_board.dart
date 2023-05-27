import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/core/constants/colors.dart';
import 'package:tic_tac_toe/core/constants/fonts.dart';
import 'package:tic_tac_toe/core/constants/images.dart';
import '../../business logic/tic_tac_toe_provider.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TicTacToeProvider>(
      builder: (context, state, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 110.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                            color: MainColor.primaryColor,
                            borderRadius: BorderRadius.circular(
                              22,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Player One',
                                style: MainFonts.customFontWhite,
                              ),
                              SizedBox(
                                height: 60.h,
                                width: 60.w,
                                child: Image.asset(
                                  MainImages.o1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                        Text(
                          state.oScore.toString(),
                          style: MainFonts.customFontWhite,
                        ),
                      ],
                    )
                  ],
                ),
                const Text('  :  ',style: TextStyle(fontSize: 18,color: Colors.white),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state.xScore.toString(),
                          style: MainFonts.customFontWhite,
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                        Container(
                          height: 110.h,
                          width: 110.w,
                          decoration: BoxDecoration(
                            color: MainColor.primaryColor,
                            borderRadius: BorderRadius.circular(
                              22,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Player Two',
                                style: MainFonts.customFontWhite,
                              ),
                              SizedBox(
                                height: 60.h,
                                width: 60.w,
                                child: Image.asset(
                                  MainImages.x1,
                                ),
                              ),
                            ],
                          ),
                        ),


                      ],
                    )
                  ],
                ),
              ],
            ),
            Text(
              state.oTurn ? 'It\'s O Turn' : 'It\'s X Turn',
              style: MainFonts.customFontWhite.copyWith(fontSize: 20),
            ),
          ],
        );
      },
    );
  }
}
