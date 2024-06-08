import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hedg_app/core/utils/app_images.dart';
import 'package:hedg_app/core/utils/app_styles.dart';

class Onboarding1Screan extends StatelessWidget {
  const Onboarding1Screan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.2,
            bottom: MediaQuery.of(context).size.height * 0.39,
          ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/onboardingbackground1.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SafeArea(
                      child: Text(
                    'Skip',
                    style: AppStyles.styleBold16,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              SvgPicture.asset(Assets.imagesOnboardinglogo1),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              const Text(
                'Shape Your Financial Future',
                style: AppStyles.styleBold20,
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'invest your money By Starting With \n HEDG, and secure financial freedom',
                style: AppStyles.styleMedium14
                    .copyWith(color: const Color(0xFF6E838F)),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
