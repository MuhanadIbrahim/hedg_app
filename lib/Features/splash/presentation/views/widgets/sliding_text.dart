import 'package:flutter/material.dart';
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
              children: [
                Text(
                  'HEDG',
                  style: TextStyle(
                    color: Color(0xff00BF54),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'INVEST IN YOUR MONEY',
                  style: TextStyle(
                    color: Color(0xFF1B506F),
                    fontSize: 11,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        });
  }
}
