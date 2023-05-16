import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectGameHeader extends StatelessWidget {
  const SelectGameHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 25.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              heightFactor: 0.7,
              child: Text(
                'Select Game',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 154.w,
              child: Container(
                height: 5.0,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFA800),
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ],
        ),
        Image.asset(
          height: 110,
          width: 130,
          'assets/icons/select game.png',
        ),
      ],
    );
  }
}
