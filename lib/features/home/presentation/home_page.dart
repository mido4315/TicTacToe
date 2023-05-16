import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tic_tac_toe/core/app_router.dart';
import 'package:tic_tac_toe/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        child: Stack(
          children: [
            Positioned(
              height: 40.h,
              width: 40.w,
              top: 119.h,
              left: 27.w,
              child: Image.asset(
                "assets/icons/star1.png",
              ),
            ),
            Positioned(
              height: 40.h,
              width: 40.w,
              top: 197.h,
              left: 57.w,
              child: Image.asset(
                "assets/icons/star1.png",
              ),
            ),
            Positioned(
              top: 60.h,
              left: 72.w,
              child: Image.asset(
                'assets/icons/title1.png',
              ),
            ),
            Positioned(
              height: 40.h,
              width: 40.w,
              top: 119.h,
              right: 27.w,
              child: Image.asset(
                "assets/icons/star1.png",
              ),
            ),
            Positioned(
              height: 40.h,
              width: 40.w,
              top: 197.h,
              right: 57.w,
              child: Image.asset(
                "assets/icons/star1.png",
              ),
            ),
            Positioned(
              height: 60.h,
              width: 360.w,
              top: 275.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/icons/star1.png",
                  ),
                  Image.asset(
                    "assets/icons/star1.png",
                  ),
                  Image.asset(
                    "assets/icons/star1.png",
                  ),
                ],
              ),
            ),
            Positioned(
              top: 400.h,
              left: 90.w,
              width: 184.w,
              height: 48.h,
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push((AppRouter.kSelectGame));
                },
                child: Text(
                  'Let\'s play',
                  style: TextStyle(fontSize: 27.sp, color: Colors.black),
                ),
              ),
            ),
            Positioned(
              bottom: 104.h,
              right: 0,
              height: 132.h,
              width: 118.w,
              child: Image.asset(
                "assets/icons/ufo.png",
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              height: 156.h,
              width: 160.w,
              child: Image.asset(
                "assets/icons/rocket.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
