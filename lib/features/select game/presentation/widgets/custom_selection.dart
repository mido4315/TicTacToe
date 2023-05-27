import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSelection extends StatelessWidget {
  const CustomSelection({
    super.key,
    required this.imagePath,
    required this.containerColor,
    required this.circleColor,
    required this.gameMode,
    required this.borderColor,
    required this.onTap,
  });

  final Color containerColor;
  final Color circleColor;
  final Color borderColor;
  final String gameMode;
  final String imagePath;
  final VoidCallback  onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 125.h,
        width: 500.w,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 130.w,
              child: Container(
                width: 190.w,
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: containerColor,
                  border: Border.all(
                    width: 3,
                    color: borderColor,
                  ),
                ),
                child: Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      " $gameMode",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 40.w,
              child: Container(
                width: 120.w,
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: circleColor,
                  border: Border.all(
                    color: borderColor,
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
