import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'HEDG',
                  style: TextStyle(
                    height: 0,
                    color: Color(0xff00BF54),
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'INVEST IN YOUR MONEY',
                  style: TextStyle(
                    height: 0,
                    color: Color(0xFF1B506F),
                    fontSize: 11,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        });
  }
}
