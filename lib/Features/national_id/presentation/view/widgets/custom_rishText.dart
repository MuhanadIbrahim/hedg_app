import 'package:flutter/material.dart';

class CustomRishText extends StatelessWidget {
  const CustomRishText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'with us on ',
            style: TextStyle(
              color: Color(0xA51F1F1F),
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0.21,
            ),
          ),
          TextSpan(
            text: 'Whatsapp',
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0.21,
            ),
          ),
        ],
      ),
    );
  }
}
