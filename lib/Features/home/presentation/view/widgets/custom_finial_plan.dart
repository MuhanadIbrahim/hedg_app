import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class CustomFinialPlan extends StatelessWidget {
  final String title;
  final String image;
  final String redGreenPrice;
  const CustomFinialPlan({
    super.key,
    required this.title,
    required this.image,
    required this.redGreenPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.13,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: AppStyles.styleBold14,
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '2,800 EGP',
                textAlign: TextAlign.right,
                style: AppStyles.styleBold14,
              ),
              SvgPicture.asset(redGreenPrice)
            ],
          )
        ],
      ),
    );
  }
}
