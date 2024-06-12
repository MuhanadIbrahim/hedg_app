import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/core/utils/app_images.dart';

import '../../../../../core/utils/app_styles.dart';

class CustomAddReceipt extends StatelessWidget {
  const CustomAddReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.37,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 12.0, vertical: 10.0), // Add padding for content(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Add Receipt',
                  style: AppStyles.styleBold14.copyWith(color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SvgPicture.asset(Assets.addbutounnationalid)
          ],
        ),
      ),
    );
  }
}
