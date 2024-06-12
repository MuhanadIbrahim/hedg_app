import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class CustomTextButtoun extends StatelessWidget {
  final double? width;
  final double? height;
  final double? fontSize;
  final void Function()? onPressed;
  final String title;
  const CustomTextButtoun({
    required this.onPressed,
    required this.title,
    super.key,
    this.width,
    this.height,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? 50,
        width: width ?? 300,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: Color(0xFF1B506F)))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF1B506F))),
            child: Text(
              title,
              style: AppStyles.styleMedium14.copyWith(
                color: Colors.white,
              ),
            )));
  }
}
