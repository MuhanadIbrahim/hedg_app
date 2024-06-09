import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class CustombackgroundLogView extends StatelessWidget {
  final String title;
  const CustombackgroundLogView({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(80),
        bottomLeft: Radius.circular(80),
      ),
      child: Container(
        color: const Color(0xff1B506F),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesWhitehorizintallogo),
            const SizedBox(
              height: 25,
            ),
            Text(
              title,
              style: AppStyles.styleBold20.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            )
          ],
        ),
      ),
    );
  }
}
