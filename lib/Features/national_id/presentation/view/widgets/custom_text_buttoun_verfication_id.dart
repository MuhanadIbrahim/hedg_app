import 'package:flutter/material.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class CustomTextButtounVerficationId extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomTextButtounVerficationId({
    required this.onPressed,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 330,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: const BorderSide(color: Color(0xFF1B506F)))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF1B506F))),
            child: Text(
              title,
              style: AppStyles.styleMedium18.copyWith(color: Colors.white),
            )));
  }
}
