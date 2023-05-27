import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tic_tac_toe/core/constants/fonts.dart';

import '../../../core/constants/colors.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: MainColor.backgroundGradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.timer,
                size: 80,
                color: MainColor.secondaryColor,
              ),
              SizedBox(height: 16),
              Text(
                'Coming Soon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: MainColor.primaryColor,
                ),
              ),
              SizedBox(height: 16),
              CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(MainColor.secondaryColor),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: MainColor.primaryColor,
                ),
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                child: Text(
                  "Go Back",
                  style: MainFonts.customFontWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
