import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/core/utils/app_images.dart';

class CustomGreenLogoAppBar extends StatelessWidget {
  const CustomGreenLogoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.13,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1910284A),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imagesGreenhorizinatillogo),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.57,
              ),
              SvgPicture.asset(Assets.notication),
            ],
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
